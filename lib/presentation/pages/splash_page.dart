import 'package:auto_route/auto_route.dart';
import 'package:dicogram/router_v2.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth/login/bloc/login_bloc.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    context.read<LoginBloc>().add(GetUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          if (state.token != null) {
            context.replaceRoute(const ListStoryRoute());
          } else {
            context.replaceRoute(const LoginRoute());
          }
        }
      },
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Text(
            'Dicogram',
            style: TextStyles.splash,
          ),
        ),
      ),
    );
  }
}
