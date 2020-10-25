//import 'dart:html';

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          //CardTipo2 es la imgen que se muestra
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          //CardTipo2 es la imgen que se muestra
          _cardTipo2(),
          SizedBox(height: 30.0)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

_cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Titulo de tarjeta'),
          subtitle: Text('Documents'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(child: Text('Cancelar'), onPressed: () {}),
            FlatButton(child: Text('Ok'), onPressed: () {})
          ],
        )
      ],
    ),
  );
}

_cardTipo2() {
  final card = Container(
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://www.facebook.com/kintocr/photos/a.118358829768695/183194679951776/'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 180.0,
          //Para que la imagen se adapte a todo el ancho posible, mediante el fit boxcover
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Ok OK OK '),
        )
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          //Nos permite que en la parte abajo de la tarjeta se vea una sombra redondeada
          BoxShadow(
              color: Colors.white,
              blurRadius: 10.0,
              //Que tanto se extienda
              spreadRadius: 10.0,
              //Es la posición en el plano cartesiano
              offset: Offset(2.0, -1.0))
        ]),
    child: ClipRRect(
      //Colocamos los borde de la tarjeta redondeados
      borderRadius: BorderRadius.circular(10.0),
      child: card,
    ),
  );
}
