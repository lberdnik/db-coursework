import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:railways/data/core/date_parser.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/home/search/cubit/search_cubit.dart';
import 'package:railways/presentation/home/search/widgets/custom_search_delegate.dart';
import 'package:railways/presentation/home/search/widgets/route_card.dart';
import 'package:railways/presentation/home/search/widgets/search_field_container.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket search'),
      ),
      body: BlocProvider(
        create: (context) => getIt.get<SearchCubit>()..init(),
        child: BlocBuilder<SearchCubit, SearchState>(
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
                        'Where are you going?',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontSize: 28),
                      ),
                    ),
                    SearchFieldContainer(
                      labelText: 'From',
                      initialText: state.departureCity == null
                          ? null
                          : '${state.departureCity?.arrivalCity}, ${state.departureCity?.arrivalPlace}',
                      onTap: () async {
                        final city = await showSearch(
                          context: context,
                          delegate: CustomSearchDelegate(state.availableCities),
                        );
                        if (city is String) {
                          context.read<SearchCubit>().updateDepartureCity(city);
                        }
                      },
                    ),
                    const SizedBox(height: 8),
                    SearchFieldContainer(
                      labelText: 'To',
                      initialText: state.arrivalCity == null
                          ? null
                          : '${state.arrivalCity?.arrivalCity}, ${state.arrivalCity?.arrivalPlace}',
                      onTap: () async {
                        final city = await showSearch(
                          context: context,
                          delegate: CustomSearchDelegate(state.availableCities),
                        );
                        if (city is String) {
                          context.read<SearchCubit>().updateArrivalCity(city);
                        }
                      },
                    ),
                    const SizedBox(height: 8),
                    SearchFieldContainer(
                      labelText: 'There',
                      initialText: DateParser.dateToString(
                        state.departureTime,
                      ),
                      onTap: () async {
                        final now = DateTime.now();
                        final date = await showDatePicker(
                          context: context,
                          initialDate: state.departureTime,
                          firstDate: now,
                          lastDate: now.add(
                            const Duration(days: 31),
                          ),
                        );
                        if (date is DateTime) {
                          context.read<SearchCubit>().updateDepartureTime(date);
                        }
                      },
                    ),
                    const SizedBox(height: 14),
                    MaterialButton(
                      minWidth: double.maxFinite,
                      color: Colors.amber,
                      disabledColor: Colors.amber.withOpacity(0.6),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      onPressed:
                          context.read<SearchCubit>().requiredFieldsFilled
                              ? context.read<SearchCubit>().search
                              : null,
                      child: Text(
                        'SEARCH',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 40),
                    if (state.searchRoutes.isEmpty &&
                        state.isRoutesSearched) ...{
                      Text(
                        'No routes found',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontSize: 28),
                      ),
                    } else ...{
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: state.searchRoutes.length,
                        itemBuilder: (context, index) {
                          final route = state.searchRoutes[index];
                          final departurePoint = ArrivalPointModel(
                            id: route.id,
                            arrivalCity: route.departureCity.arrivalCity,
                            arrivalPlace: route.departureCity.arrivalPlace,
                            arrivalTime: route.departureTime,
                          );
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: RouteCard(
                              route: route,
                              arrivalPoint: state.arrivalPoint,
                              departurePoint: departurePoint,
                            ),
                          );
                        },
                      ),
                    }
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
