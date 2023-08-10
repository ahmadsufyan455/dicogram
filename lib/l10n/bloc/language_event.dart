part of 'language_bloc.dart';

@immutable
sealed class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

final class ChangeLanguage extends LanguageEvent {
  final Language language;
  const ChangeLanguage(this.language);
}

final class GetLanguage extends LanguageEvent {}
