import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';
import 'package:railways/domain/search/models/route_model.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/core/const.dart';
import 'package:railways/presentation/route/cubit/route_cubit.dart';
import 'package:railways/presentation/route/widgets/point_card.dart';

class RoutePage extends StatelessWidget {
  final RouteModel route;
  final ArrivalPointModel? departurePoint;
  final ArrivalPointModel? arrivalPoint;

  const RoutePage({
    required this.route,
    this.departurePoint,
    this.arrivalPoint,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: Text(
          '${route.departureCity.arrivalCity} - ${route.arrivalPoints!.last.arrivalCity}',
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt.get<RouteCubit>()
          ..init(
            route,
            arrivalPointBase: arrivalPoint,
            departurePointBase: departurePoint,
          ),
        child: BlocBuilder<RouteCubit, RouteState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Available Tickets',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontSize: 28),
                      ),
                    ),
                    if (state.isLoading) ...{
                      const Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    } else ...{
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: state.availableTickets.length,
                        itemBuilder: (context, index) {
                          final ticket = state.availableTickets[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: PointCard(
                              departurePoint: ticket.first,
                              arrivalPoint: ticket.last,
                              availableSeats:
                                  route.carriages.availableSeatsAmount,
                              onTap: () => GoRouter.of(context).push(
                                Routes.ticket,
                                extra: {
                                  'departurePoint': ticket.first,
                                  'arrivalPoint': ticket.last,
                                  'carriages': state.carriages,
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    },
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
