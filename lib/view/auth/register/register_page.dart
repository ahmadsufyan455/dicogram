import 'package:auto_route/auto_route.dart';
import 'package:dicogram/data/model/register_model.dart';
import 'package:dicogram/data/source/remote_data_source.dart';
import 'package:dicogram/data/source/story_repository.dart';
import 'package:dicogram/router_v2.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:dicogram/view/auth/register/bloc/register_bloc.dart';
import 'package:dicogram/widget/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RegisterBloc(StoryRepository(RemoteDataSourceImpl())),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Register',
            style: TextStyles.body.copyWith(fontSize: 20.0),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Column(
                children: [
                  Lottie.asset('assets/animations/astronaut_2.json',
                      width: 250),
                  const SizedBox(height: 24.0),
                  TextInput(
                    controller: fullNameController,
                    hint: 'Full Name',
                    textInputType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 16.0),
                  TextInput(
                    controller: emailController,
                    hint: 'Email',
                    textInputType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 16.0),
                  TextInput(
                    controller: passwordController,
                    hint: 'Password',
                    textInputType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    isObscure: isObscure,
                    hasSuffix: true,
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                  ),
                  const SizedBox(height: 24.0),
                  BlocConsumer<RegisterBloc, RegisterState>(
                    listener: (context, state) {
                      if (state is RegisterSuccess) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Register success, please login with new account',
                            ),
                          ),
                        );
                        context.replaceRoute(const LoginRoute());
                      } else if (state is RegisterError) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(
                              'Something went wrong!',
                              style: TextStyles.title,
                            ),
                            content: Text(state.error, style: TextStyles.body),
                            actions: [
                              TextButton(
                                onPressed: () => context.router.pop(),
                                child: Text(
                                  'Try Again',
                                  style: TextStyles.body.copyWith(
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is RegisterLoading) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return GestureDetector(
                        onTap: () {
                          final registerData = RequestRegister(
                            name: fullNameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                          ).toJson();
                          context
                              .read<RegisterBloc>()
                              .add(Register(registerData));
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              'Register',
                              style:
                                  TextStyles.body.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    'Already have an account ?',
                    style: TextStyles.body,
                  ),
                  GestureDetector(
                    onTap: () => context.replaceRoute(const LoginRoute()),
                    child: Text(
                      'Login Now',
                      style: TextStyles.body.copyWith(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
