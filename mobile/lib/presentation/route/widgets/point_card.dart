import 'package:flutter/material.dart';
import 'package:railways/data/core/date_parser.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';

class PointCard extends StatelessWidget {
  final ArrivalPointModel departurePoint;
  final ArrivalPointModel arrivalPoint;
  final int availableSeats;
  final VoidCallback onTap;
  late final String departureTime;
  late final String departureCity;
  late final String departurePlace;
  late final String arrivalTime;
  late final String arrivalCity;
  late final String arrivalPlace;
  late final String? duration;
  late final double price;

  PointCard({
    required this.departurePoint,
    required this.arrivalPoint,
    required this.availableSeats,
    required this.onTap,
    super.key,
  }) {
    departureTime = departurePoint.arrivalTime!.substring(5);
    departureCity = departurePoint.arrivalCity;
    departurePlace = departurePoint.arrivalPlace;
    arrivalTime = arrivalPoint.arrivalTime!.substring(5);
    arrivalCity = arrivalPoint.arrivalCity;
    arrivalPlace = arrivalPoint.arrivalPlace;
    final lastArrivaleDate = DateParser.stringToDate(
      arrivalPoint.arrivalTime!,
    );
    final firstArrivaleDate = DateParser.stringToDate(
      departurePoint.arrivalTime!,
    );
    final durationDate = lastArrivaleDate.difference(firstArrivaleDate);
    duration =
        '- ${durationDate.inMinutes ~/ 60}h.${durationDate.inMinutes - (durationDate.inMinutes ~/ 60) * 60}min. -';
    price = double.parse(arrivalPoint.price!);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
                  Text('Seats: $availableSeats'),
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
