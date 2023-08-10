import 'dart:ui';

enum Language {
  english(Locale('en', 'US'), 'English'),
  indonesia(Locale('id', 'ID'), 'Bahasa Indonesia');

  const Language(this.value, this.label);
  final Locale value;
  final String label;
}
