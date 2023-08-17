part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({required Language selectedLanguage}) =
      _LanguageState;
}
