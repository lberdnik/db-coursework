import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/core/const.dart';
import 'package:railways/presentation/home/orders/cubit/orders_cubit.dart';
import 'package:railways/presentation/home/orders/widgets/filter_button.dart';
import 'package:railways/presentation/home/orders/widgets/order_card.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<OrdersCubit>()..init(),
      child: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Orders Page'),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: FilterButton(
                    onFilterChanged: context.read<OrdersCubit>().updateFilter,
                    currentFilter: state.currentFilter,
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (state.isLoading) ...{
                      const Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    } else ...{
                      if (state.filteredOrders.isEmpty) ...{
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'No active orders',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 28),
                          ),
                        ),
                      } else ...{
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Your Orders',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 28),
                          ),
                        ),
                        ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemCount: state.filteredOrders.length,
                          itemBuilder: (context, index) {
                            final order = state.filteredOrders[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12.0,
                              ),
                              child: OrderCard(
                                order: order,
                                onTap: () => GoRouter.of(context).push(
                                  Routes.payment,
                                  extra: {
                                    'order': order,
                                    'ordersCubit': context.read<OrdersCubit>(),
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      }
                    },
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
