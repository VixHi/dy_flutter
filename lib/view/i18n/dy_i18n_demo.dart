import 'package:flutter/material.dart';
import 'package:helloworld_flutter/view/i18n/dy_localization.dart';

class DYI18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Il8n'),
        elevation: 0.0,
      ),
      body: DYI18nHome(),
    );
  }
}

class DYI18nHome extends StatefulWidget {
  @override
  _DYI18nHomeState createState() => _DYI18nHomeState();
}

class _DYI18nHomeState extends State<DYI18nHome> {


  @override
  Widget build(BuildContext context) {
    Locale _locale = Localizations.localeOf(context);
    return Center(
      child: Column(  
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${_locale.toString()},'),
          Text(
            // DYLocalizationsConfig(_locale).title,
            DYLocalizationsConfig.of(context).title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
