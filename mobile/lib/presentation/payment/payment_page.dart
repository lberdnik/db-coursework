// ignore_for_file: equal_elements_in_set

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:go_router/go_router.dart';
import 'package:railways/domain/orders/models/discount_model.dart';
import 'package:railways/domain/orders/models/order_model.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/home/cubit/home_cubit.dart';
import 'package:railways/presentation/home/orders/cubit/orders_cubit.dart';
import 'package:railways/presentation/payment/cubit/payment_cubit.dart';
import 'package:railways/presentation/payment/widgets/discount_card.dart';
import 'package:railways/presentation/payment/widgets/ticket_card.dart';

class PaymentPage extends StatefulWidget {
  final OrderModel order;
  final OrdersCubit ordersCubit;

  const PaymentPage({
    required this.order,
    required this.ordersCubit,
    super.key,
  });

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final cardFormEditController = CardFormEditController();
  late final List<DiscountModel> discounts;

  @override
  void initState() {
    cardFormEditController.addListener(() {
      setState(() {});
    });
    discounts = getIt.get<HomeCubit>().state.discounts;
    super.initState();
  }

  @override
  void dispose() {
    cardFormEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.ordersCubit.init();
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: widget.order.orderStatus == 'success'
              ? Text('Order №${widget.order.id}')
              : Text('Payment for Order №${widget.order.id}'),
          backgroundColor: widget.order.orderStatus == 'success'
              ? Colors.teal
              : Colors.amber,
          leading: const BackButton(color: Colors.white),
        ),
        body: BlocProvider(
          create: (context) => getIt.get<PaymentCubit>()
            ..init(
              widget.order,
              discounts,
            ),
          child: BlocConsumer<PaymentCubit, PaymentState>(
            listener: (context, state) {
              switch (state.paymentStatus) {
                case PaymentIntentsStatus.Succeeded:
                  _showSnackBar('Success!', Colors.teal, shouldRedirect: true);
                  break;
                case PaymentIntentsStatus.Canceled:
                  _showSnackBar('Failure!', Colors.red);
                  break;
                default:
              }
            },
            builder: (context, state) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            'Payment status: ${state.order!.orderStatus}',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(fontSize: 24),
                          ),
                        ),
                      ),
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: state.order!.orderedTickets!.length,
                        itemBuilder: (context, index) {
                          final ticket = state.order!.orderedTickets![index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: TicketCard(ticket: ticket),
                          );
                        },
                      ),
                      if (widget.order.orderStatus != 'success') ...{
                        const SizedBox(height: 12),
                        CardFormField(
                          controller: cardFormEditController,
                        ),
                        const SizedBox(height: 20),
                        if (state.discounts.isNotEmpty) ...{
                          ExpansionTile(
                            title: const Text('Select discount'),
                            onExpansionChanged: (value) {
                              if (!value) {
                                context
                                    .read<PaymentCubit>()
                                    .updateDiscount(-1, value);
                              }
                            },
                            children: [
                              ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                itemCount: state.discounts.length,
                                itemBuilder: (context, index) {
                                  final discount = discounts[index];
                                  final discountString = (discount
                                              .discountType.discountTypeName ==
                                          'permanent')
                                      ? ''
                                      : ', ${discount.discountType.discountLimit! - discount.usageAmount} usages left';
                                  return DiscountCard(
                                    value: index == state.selectedDiscountIndex,
                                    onChanged: (value) => context
                                        .read<PaymentCubit>()
                                        .updateDiscount(index, value),
                                    title:
                                        '-${discount.discountType.discountPercent}%$discountString',
                                  );
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                        },
                        Center(
                          child: Text(
                            'Total price: ${context.read<PaymentCubit>().calculateTotalPrice()}\$',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: Colors.teal),
                          ),
                        ),
                        const SizedBox(height: 32),
                        MaterialButton(
                          minWidth: double.maxFinite,
                          color: Colors.amber,
                          disabledColor: Colors.amber.withOpacity(0.6),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          onPressed: cardFormEditController.details.complete &&
                                  state.paymentStatus !=
                                      PaymentIntentsStatus.Processing &&
                                  state.paymentStatus !=
                                      PaymentIntentsStatus.Succeeded
                              ? () {
                                  FocusScope.of(context).unfocus();
                                  context.read<PaymentCubit>().payForOrder();
                                }
                              : null,
                          child: state.paymentStatus ==
                                      PaymentIntentsStatus.Processing ||
                                  state.paymentStatus ==
                                      PaymentIntentsStatus.Succeeded
                              ? const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                )
                              : Text(
                                  'Pay Now',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(color: Colors.white),
                                ),
                        ),
                        const SizedBox(height: 32),
                      },
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _showSnackBar(String text, Color? color, {bool shouldRedirect = false}) {
    ScaffoldMessenger.of(context)
        .showSnackBar(
          SnackBar(
            content: Text(
              text,
              textAlign: TextAlign.center,
            ),
            backgroundColor: color,
            width: 200,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(12),
            behavior: SnackBarBehavior.floating,
          ),
        )
        .closed
        .then((_) {
      if (shouldRedirect) {
        widget.ordersCubit.init();
        GoRouter.of(context).pop();
      }
    });
  }
}
