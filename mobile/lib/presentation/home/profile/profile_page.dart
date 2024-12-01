import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/home/profile/cubit/profile_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: BlocProvider(
        create: (context) => getIt.get<ProfileCubit>()..init(),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    if (state.isLoading) ...{
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    } else ...{
                      const SizedBox(height: 4),
                      Center(
                        child: Text(
                          'Hello, ${state.account!.firstName} ${state.account!.lastName}!',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(fontSize: 28),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Center(
                        child: Text(
                          'Email: ${state.account!.email}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(fontSize: 20),
                        ),
                      )
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
