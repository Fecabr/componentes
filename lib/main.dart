import 'package:flutter/material.dart';

import 'package:componentes/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes !!',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
