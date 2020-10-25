import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes !!',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //const Locale('en'), // Inglés
        const Locale('es'), // Español
        //const Locale.fromSubtags(languageCode: 'zh')
      ],
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightBlueAccent[900],
          accentColor: Colors.cyan[600]),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicatiomRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamda: ${settings.name}');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
