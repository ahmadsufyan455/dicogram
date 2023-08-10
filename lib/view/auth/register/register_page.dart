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
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    final l10n = AppLocalizations.of(context);
    return BlocProvider(
      create: (context) =>
          RegisterBloc(StoryRepository(RemoteDataSourceImpl())),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            l10n!.register,
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
                    hint: l10n.fullName,
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
                          SnackBar(
                            content: Text(
                              l10n.registerSuccess,
                            ),
                          ),
                        );
                        context.router.pushAndPopUntil(
                          const LoginRoute(),
                          predicate: (route) => false,
                        );
                      } else if (state is RegisterError) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(
                              l10n.somethingWentWrong,
                              style: TextStyles.title,
                            ),
                            content: Text(state.error, style: TextStyles.body),
                            actions: [
                              TextButton(
                                onPressed: () => context.router.pop(),
                                child: Text(
                                  l10n.tryAgain,
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
                              l10n.register,
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
                    l10n.alreadyHaveAccount,
                    style: TextStyles.body,
                  ),
                  GestureDetector(
                    onTap: () => context.router.pushAndPopUntil(
                      const LoginRoute(),
                      predicate: (route) => false,
                    ),
                    child: Text(
                      l10n.loginNow,
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
