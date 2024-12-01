import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/home/board/cubit/board_cubit.dart';
import 'package:railways/presentation/home/search/widgets/route_card.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Board'),
      ),
      body: BlocProvider(
        create: (context) => getIt.get<BoardCubit>()..init(),
        child: BlocBuilder<BoardCubit, BoardState>(
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
                        'Available routes',
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
                    } else if (state.searchRoutes.isEmpty) ...{
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
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: state.searchRoutes.length,
                        itemBuilder: (context, index) {
                          final route = state.searchRoutes[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: RouteCard(route: route),
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
