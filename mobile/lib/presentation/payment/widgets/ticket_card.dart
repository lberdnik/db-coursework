import 'package:flutter/material.dart';
import 'package:railways/domain/tickets/models/ticket_model.dart';

class TicketCard extends StatelessWidget {
  final TicketModel ticket;

  const TicketCard({
    required this.ticket,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: <BoxShadow>[
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (ticket.departurePoint.arrivalTime != null)
                    Text(
                      ticket.departurePoint.arrivalTime!.substring(5),
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  Text(
                    ticket.departurePoint.arrivalCity,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    ticket.departurePoint.arrivalPlace,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (ticket.arrivalPoint.arrivalTime != null)
                    Text(
                      ticket.arrivalPoint.arrivalTime!.substring(5),
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  Text(
                    ticket.arrivalPoint.arrivalCity,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    ticket.arrivalPoint.arrivalPlace,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Car №${ticket.carriage}, seat №${ticket.seatNumber}'),
              Text('Price: ${ticket.price}\$')
            ],
          )
        ],
      ),
    );
  }
}
