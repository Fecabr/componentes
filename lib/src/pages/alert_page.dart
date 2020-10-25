import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      //Se mostrara un boton de alerta
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alertas'),
          color: Colors.blue,
          textColor: Colors.white,
          //Hace que el boton se redondee
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        //El contexto de nuestra paguina
        context: context,
        //Para que no se pueda cerrar desde afuera.
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            //RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: Text('Alerta'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Mensaje de la alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
              FlatButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }
}
