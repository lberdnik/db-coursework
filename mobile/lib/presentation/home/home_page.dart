import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/home/cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  const HomePage({
    required this.child,
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<HomeCubit>()
        ..initDiscounts()
        ..initAccount(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state.account != null && !state.isAccountShown) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Hello, ${state.account!.firstName} ${state.account!.lastName}!',
                  textAlign: TextAlign.center,
                ),
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.2,
                  right: MediaQuery.of(context).size.width * 0.2,
                ),
                padding: const EdgeInsets.all(12),
                behavior: SnackBarBehavior.floating,
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: widget.child,
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                context.read<HomeCubit>().goToIndex(index);
              },
              type: BottomNavigationBarType.fixed,
              currentIndex: state.currentIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.train),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.directions_walk),
                  label: 'Board',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: 'Orders',
                ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.account_box),
                //   label: 'Profile',
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
