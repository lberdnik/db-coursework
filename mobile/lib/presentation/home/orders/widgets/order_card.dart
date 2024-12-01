import 'package:flutter/material.dart';
import 'package:railways/domain/orders/models/order_model.dart';

class OrderCard extends StatelessWidget {
  final OrderModel order;
  final VoidCallback onTap;

  const OrderCard({
    required this.order,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                Text(
                  'Order №${order.id}',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  'Status: ${order.orderStatus}',
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: order.orderStatus == 'success'
                            ? Colors.teal
                            : order.orderStatus == 'fail'
                                ? Colors.red
                                : null,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tickets: ${order.orderedTickets!.length}',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  'Price: ${order.totalPrice}\$',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
