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
  late LoginBloc loginBloc;

  @override
  void initState() {
    loginBloc = context.read<LoginBloc>();
    loginBloc.add(GetUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          if (state.isLogin) {
            context.replaceRoute(const ListStoryRoute());
          } else {
            context.replaceRoute(const LoginRoute());
          }
        }
      },
      child: Scaffold(
        body: Center(
          child: Text(
            'Splash Screen',
            style: TextStyles.title,
          ),
        ),
      ),
    );
  }
}
