import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:railways/domain/carriages/models/carriage_model.dart';
import 'package:railways/presentation/ticket/cubit/ticket_cubit.dart';

String typeFromId(int id) {
  switch (id) {
    case 1:
      return 'Seated';
    case 2:
      return 'Coupe';
    case 3:
      return 'Platzkart';
    default:
      return '';
  }
}

class CarCard extends StatefulWidget {
  final CarriageModel carriage;
  final VoidCallback onTap;
  final int carIndex;
  final bool isSelected;

  const CarCard({
    required this.carriage,
    required this.onTap,
    required this.carIndex,
    required this.isSelected,
    super.key,
  });

  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  int selectedSeat = -1;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Car №${widget.carriage.id}, ${widget.carriage.availableSeats.length} seats, ${typeFromId(widget.carriage.carriageType)}',
      ),
      onExpansionChanged: (value) {
        if (value) {
          widget.onTap();
        }
      },
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 10,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
              widget.carriage.seatAmount,
              (index) {
                return GestureDetector(
                  onTap: widget.carriage.availableSeats.contains(index + 1)
                      ? () {
                          context.read<TicketCubit>().onSeatTap(
                                index + 1,
                                widget.carIndex,
                              );
                          selectedSeat = index + 1;
                        }
                      : null,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: AnimatedContainer(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          color:
                              !widget.carriage.availableSeats.contains(index + 1)
                                  ? Colors.black.withOpacity(0.3)
                                  : index + 1 == selectedSeat && widget.isSelected
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.black.withOpacity(0.1),
                          border: index + 1 == selectedSeat && widget.isSelected
                              ? Border.all(color: Colors.blue)
                              : null,
                          borderRadius: BorderRadius.circular(12)),
                      duration: const Duration(milliseconds: 300),
                      child: Center(
                        child: Text('${index + 1}'),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
