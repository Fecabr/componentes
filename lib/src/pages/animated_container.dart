import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 800),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () => _cambiarForma(),
      ),
    );
  }

  void _cambiarForma() {
    final rando = Random();

    //Para actulizar la pantalla
    setState(() {
      _width = rando.nextInt(300).toDouble();
      _height = rando.nextInt(200).toDouble();
      _color = Color.fromRGBO(
          rando.nextInt(255), rando.nextInt(255), rando.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(rando.nextInt(100).toDouble());
    });
  }
}
