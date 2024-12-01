import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/register/cubit/register_cubit.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  late final TextEditingController loginController;
  late final TextEditingController passwordController;
  late final TextEditingController lastNameController;
  late final TextEditingController firstNameController;

  @override
  void initState() {
    super.initState();
    loginController = TextEditingController();
    passwordController = TextEditingController();
    lastNameController = TextEditingController();
    firstNameController = TextEditingController();
  }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    lastNameController.dispose();
    firstNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt.get<RegisterCubit>(),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: FocusScope.of(context).unfocus,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Register Page'),
                leading: const BackButton(color: Colors.white),
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
                            'Fill in your personal information to create an account. The account will be valid for both the websitre and the application',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        const SizedBox(height: 70),
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
                            constraints: BoxConstraints(
                              maxWidth: size.width * 0.6,
                            ),
                            labelText: 'Last name',
                          ),
                          controller: lastNameController,
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
                            constraints: BoxConstraints(
                              maxWidth: size.width * 0.6,
                            ),
                            labelText: 'First name',
                          ),
                          controller: firstNameController,
                        ),
                        const SizedBox(height: 14),
                        TextFormField(
                          onChanged: (_) =>
                              context.read<RegisterCubit>().cleanError(),
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
                            text: 'Already have an account? Login',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = GoRouter.of(context).pop,
                          ),
                        ),
                        const SizedBox(height: 22),
                        MaterialButton(
                          padding: const EdgeInsets.all(8),
                          color: Colors.amber,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.read<RegisterCubit>().register(
                                    loginController.text,
                                    passwordController.text,
                                    lastNameController.text,
                                    firstNameController.text,
                                  );
                            }
                          },
                          child: Text(
                            'Register',
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
