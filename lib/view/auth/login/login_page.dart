import 'package:auto_route/auto_route.dart';
import 'package:dicogram/data/model/login_model.dart';
import 'package:dicogram/router_v2.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:dicogram/view/auth/login/bloc/login_bloc.dart';
import 'package:dicogram/widget/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
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
                Lottie.asset('assets/animations/astronaut.json', width: 250),
                const SizedBox(height: 24.0),
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
                BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state is LoginSuccess) {
                      context.replaceRoute(const ListStoryRoute());
                    } else if (state is LoginError) {
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
                              onPressed: () {},
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
                    if (state is LoginLoding) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return GestureDetector(
                      onTap: () {
                        final loginData = RequestLogin(
                          email: emailController.text,
                          password: passwordController.text,
                        ).toJson();
                        context.read<LoginBloc>().add(Login(loginData));
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
                            'Login',
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
                  'Don\'t have an account ?',
                  style: TextStyles.body,
                ),
                GestureDetector(
                  onTap: () => context.pushRoute(const RegisterRoute()),
                  child: Text(
                    'Register Now',
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
    );
  }
}
