import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Index';

  @override
  String get welcome => 'Welcome!';

  @override
  String get appDescription => 'Your ultimate streaming companion';

  @override
  String get continueWithGoogle => 'Continue with Google';

  @override
  String get continueAsGuest => 'Continue as Guest';

  @override
  String get movies => 'Movies';

  @override
  String get tvShows => 'TV Shows';

  @override
  String get favorites => 'Favorites';

  @override
  String get settings => 'Settings';

  @override
  String get about => 'About';
}