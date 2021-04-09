import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class DYLocalizationsConfig {
  final Locale locale;
  DYLocalizationsConfig(this.locale);

  static DYLocalizationsConfig of(BuildContext context) {
    return Localizations.of<DYLocalizationsConfig>(
      context, 
      DYLocalizationsConfig,
    );
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'Hello',
    },
    'zh': {
      'title': '您好',
    },
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class DYLocalizationsConfigDelegate extends LocalizationsDelegate<DYLocalizationsConfig> {

  DYLocalizationsConfigDelegate();

  @override
  Future<DYLocalizationsConfig> load(Locale locale) {
    return SynchronousFuture<DYLocalizationsConfig>(DYLocalizationsConfig(locale));
  }

  @override
  bool isSupported(Locale locale) {
    return true;    
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<DYLocalizationsConfig> old) {
    return false;
  }
}