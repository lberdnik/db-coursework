import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/core/const.dart';
import 'package:railways/presentation/login/cubit/login_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  late final TextEditingController loginController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    loginController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt.get<LoginCubit>(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: FocusScope.of(context).unfocus,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Login Page'),
              ),
              body: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 24,
                          ),
                          child: Text(
                            'To log into the account, use the e-mail and password, which wad indices during registration on the site/in the application',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        const SizedBox(height: 100),
                        TextFormField(
                          onChanged: (_) =>
                              context.read<LoginCubit>().cleanError(),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            fillColor: Colors.black.withOpacity(0.02),
                            filled: true,
                            constraints: BoxConstraints(
                              maxWidth: size.width * 0.6,
                            ),
                            labelText: 'Email',
                          ),
                          controller: loginController,
                        ),
                        if (state.error != null)
                          Text(
                            state.error!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(color: Colors.red),
                          ),
                        const SizedBox(height: 14),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            fillColor: Colors.black.withOpacity(0.02),
                            filled: true,
                            labelText: 'Pasword',
                            constraints: BoxConstraints(
                              maxWidth: size.width * 0.6,
                            ),
                          ),
                          controller: passwordController,
                        ),
                        const SizedBox(height: 14),
                        Text.rich(
                          TextSpan(
                            text: "Don't have an account? Register",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  GoRouter.of(context).push(Routes.register),
                          ),
                        ),
                        const SizedBox(height: 22),
                        MaterialButton(
                          color: Colors.amber,
                          padding: const EdgeInsets.all(8),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.read<LoginCubit>().login(
                                    loginController.text,
                                    passwordController.text,
                                  );
                            }
                          },
                          child: Text(
                            'Login',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
