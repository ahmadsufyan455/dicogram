import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../l10n/bloc/language_bloc.dart';
import '../../../l10n/lang.dart';
import '../../../router_v2.dart';
import '../../../utils/text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../auth/login/bloc/login_bloc.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.profile,
          style: TextStyles.body.copyWith(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/images/man.png'),
              ),
              const SizedBox(height: 24),
              FutureBuilder(
                future: getName(),
                builder: (context, snapshot) => Text(
                  snapshot.data ?? '',
                  style: TextStyles.title,
                ),
              ),
              const SizedBox(height: 34),
              GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return BlocBuilder<LanguageBloc, LanguageState>(
                      builder: (context, state) {
                        return ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => const Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          itemCount: Language.values.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                context.read<LanguageBloc>().add(
                                      LanguageEvent.changeLanguage(
                                        Language.values[index],
                                      ),
                                    );
                                Future.delayed(const Duration(seconds: 300));
                                context.router.pop();
                              },
                              leading: Image.asset(
                                Language.values[index].logo,
                                width: 30,
                              ),
                              title: Text(Language.values[index].label),
                              trailing: Language.values[index] ==
                                      state.selectedLanguage
                                  ? const Icon(
                                      Icons.check_rounded,
                                      color: Colors.deepPurple,
                                    )
                                  : null,
                            );
                          },
                        );
                      },
                    );
                  },
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        const Icon(Icons.translate_rounded,
                            color: Colors.deepPurple),
                        const SizedBox(width: 16),
                        Text(l10n.changeLang, style: TextStyles.body),
                      ],
                    ),
                  ),
                ),
              ),
              BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is LoginSuccess) {
                    context.router.pushAndPopUntil(
                      const LoginRoute(),
                      predicate: (route) => false,
                    );
                  }
                },
                child: GestureDetector(
                  onTap: () => context.read<LoginBloc>().add(Logout()),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          const Icon(Icons.logout_rounded,
                              color: Colors.deepPurple),
                          const SizedBox(width: 16),
                          Text(l10n.logout, style: TextStyles.body),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> getName() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString('full_name');
    return name ?? '';
  }
}
