part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.changeLanguage(Language language) =
      _ChangeLanguage;
  const factory LanguageEvent.getLanguage() = _GetLanguage;
}
