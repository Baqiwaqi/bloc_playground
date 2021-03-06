import 'package:flutter/material.dart';

class FlutterBlocLocalizations {
  static FlutterBlocLocalizations of(BuildContext context) {
    return Localizations.of<FlutterBlocLocalizations>(
        context, FlutterBlocLocalizations);
  }

  String get AppTitle => 'Todos';
}

class FlutterBlocLocalizationsDelegate
    extends LocalizationsDelegate<FlutterBlocLocalizations> {
  @override
  bool isSupported(Locale locale) {
    locale.languageCode.toLowerCase().contains('en');
  }

  @override
  Future<FlutterBlocLocalizations> load(Locale locale) {
    Future(() => FlutterBlocLocalizations());
  }

  @override
  bool shouldReload(FlutterBlocLocalizationsDelegate old) => false;
}
