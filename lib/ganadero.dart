import 'package:flutter/material.dart';
import 'package:ganadero_app/notfound_page.dart';
import 'package:ganadero_app/utils/UIData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ganadero_app/utils/translations.dart';

class Ganadero extends StatelessWidget {
  final materialApp = MaterialApp(
      title: UIData.appName,
      theme: ThemeData(
          primaryColor: Colors.black,
          fontFamily: UIData.quickFont,
          primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      home:   NotFoundPage(
            appTitle: UIData.coming_soon,
            icon: FontAwesomeIcons.solidSmile,
            title: UIData.coming_soon,
            message: "Under Development",
            iconColor: Colors.green,
          ),
      localizationsDelegates: [
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("en", "US"),
        const Locale("hi", "IN"),
      ],
       initialRoute: UIData.notFoundRoute,

      //routes
      routes: <String, WidgetBuilder>{},
      onUnknownRoute: (RouteSettings rs) => new MaterialPageRoute(
          builder: (context) => new NotFoundPage(
                appTitle: UIData.coming_soon,
                icon: FontAwesomeIcons.solidSmile,
                title: UIData.coming_soon,
                message: "Under Development",
                iconColor: Colors.green,
              )));

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
