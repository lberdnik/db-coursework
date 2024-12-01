import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:railways/domain/carriages/models/carriage_model.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/core/const.dart';
import 'package:railways/presentation/home/cubit/home_cubit.dart';
import 'package:railways/presentation/ticket/cubit/ticket_cubit.dart';
import 'package:railways/presentation/ticket/widgets/car_card.dart';

class TicketPage extends StatelessWidget {
  final ArrivalPointModel departurePoint;
  final ArrivalPointModel arrivalPoint;
  final List<CarriageModel> carriages;

  const TicketPage({
    required this.departurePoint,
    required this.arrivalPoint,
    required this.carriages,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: const Text('Choose car'),
      ),
      body: BlocProvider(
        create: (context) => getIt.get<TicketCubit>()
          ..init(
            arrivalPoint: arrivalPoint,
            carriages: carriages,
            departurePoint: departurePoint,
          ),
        child: BlocBuilder<TicketCubit, TicketState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 12),
                      child: Text(
                        '${departurePoint.arrivalCity} -> ${arrivalPoint.arrivalCity}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontSize: 28),
                      ),
                    ),
                    Text(
                      'Price: ${arrivalPoint.price}',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: Colors.teal),
                    ),
                    const SizedBox(height: 20),
                    ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: state.carriages!.length,
                      itemBuilder: (context, index) {
                        final carriage = state.carriages![index];
                        return CarCard(
                          carriage: carriage,
                          isSelected: state.selectedCarriageId == carriage.id,
                          carIndex: index,
                          onTap: () => context.read<TicketCubit>().onCarTap(
                                index,
                              ),
                        );
                      },
                    ),
                    const SizedBox(height: 32),
                    MaterialButton(
                      minWidth: double.maxFinite,
                      color: Colors.amber,
                      disabledColor: Colors.amber.withOpacity(0.6),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      onPressed: state.selectedCarriageId != null &&
                              state.selectedSeat != null
                          ? () {
                              context
                                  .read<TicketCubit>()
                                  .createTicket()
                                  .then((_) {
                                context
                                    .read<HomeCubit>()
                                    .goToNamed(Routes.orders);
                              });
                            }
                          : null,
                      child: Text(
                        'Add to car',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
