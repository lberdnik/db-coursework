import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:railways/data/core/date_parser.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';
import 'package:railways/domain/search/models/route_model.dart';
import 'package:railways/presentation/core/const.dart';

class RouteCard extends StatelessWidget {
  final RouteModel route;
  final ArrivalPointModel? departurePoint;
  final ArrivalPointModel? arrivalPoint;
  late final String departureTime;
  late final String departureCity;
  late final String departurePlace;
  late final String arrivalTime;
  late final String arrivalCity;
  late final String arrivalPlace;
  late final String? duration;
  late final int availableSeets;
  late final double price;

  RouteCard({
    required this.route,
    this.departurePoint,
    this.arrivalPoint,
    super.key,
  }) {
    departureTime = departurePoint?.arrivalTime?.substring(5) ??
        route.departureTime.substring(5);
    departureCity =
        departurePoint?.arrivalCity ?? route.departureCity.arrivalCity;
    departurePlace =
        departurePoint?.arrivalPlace ?? route.departureCity.arrivalPlace;
    final lastPoint = (route.arrivalPoints?.isNotEmpty ?? false)
        ? route.arrivalPoints?.last
        : null;
    arrivalTime = lastPoint?.arrivalTime!.substring(5) ?? '';
    arrivalCity = lastPoint?.arrivalCity ?? '';
    arrivalPlace = lastPoint?.arrivalPlace ?? '';
    final lastArrivaleDate = lastPoint == null
        ? null
        : DateParser.stringToDate(lastPoint.arrivalTime!);
    final firstArrivaleDate = departurePoint != null
        ? DateParser.stringToDate(departurePoint!.arrivalTime!)
        : DateParser.stringToDate(route.departureTime);
    final durationDate = lastArrivaleDate?.difference(firstArrivaleDate);
    duration = durationDate == null
        ? null
        : '- ${durationDate.inMinutes ~/ 60}h.${durationDate.inMinutes - (durationDate.inMinutes ~/ 60) * 60}min. -';
    availableSeets = route.carriages.availableSeatsAmount;
    price = route.carriages.price;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final data = {
          'route': route,
          'arrivalPoint': arrivalPoint,
          'departurePoint': departurePoint,
        };
        GoRouter.of(context).push(
          Routes.route,
          extra: data,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(1, 1),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        departureTime,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        departureCity,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        departurePlace,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                if (duration != null) Text(duration!),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        arrivalTime,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        arrivalCity,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        arrivalPlace,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Seats: $availableSeets'),
                  Text(
                    '$price\$',
                    style: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
