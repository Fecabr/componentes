import 'package:componentes/src/pages/animated_container.dart';

import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicatiomRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    //'map': (BuildContext context) => MapsPage(),
    //'avatar': (BuildContext context) => PaquetesPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'input': (BuildContext context) => InputPage(),
  };
}
