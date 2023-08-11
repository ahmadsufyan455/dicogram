import 'dart:ui';

enum Language {
  english(
    Locale('en', 'US'),
    'English',
    'assets/images/english.png',
  ),
  indonesia(
    Locale('id', 'ID'),
    'Bahasa Indonesia',
    'assets/images/indonesia.png',
  ),
  espana(
    Locale('es'),
    'España',
    'assets/images/espana.png',
  );

  const Language(this.value, this.label, this.logo);
  final Locale value;
  final String label;
  final String logo;
}
