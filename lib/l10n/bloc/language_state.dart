part of 'language_bloc.dart';

class LanguageState extends Equatable {
  const LanguageState({required this.selectedLanguage});
  final Language selectedLanguage;

  @override
  List<Object> get props => [selectedLanguage];
}
