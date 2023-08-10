import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../lang.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc()
      : super(const LanguageState(selectedLanguage: Language.english)) {
    on<ChangeLanguage>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('lang', event.language.value.languageCode);
      emit(LanguageState(selectedLanguage: event.language));
    });

    on<GetLanguage>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      final selectedLanguageCode = prefs.getString('lang');
      if (selectedLanguageCode != null) {
        final selectedLanguage = Language.values.firstWhere(
          (lang) => lang.value.languageCode == selectedLanguageCode,
          orElse: () => Language.english,
        );
        emit(LanguageState(selectedLanguage: selectedLanguage));
      }
    });
  }
}
