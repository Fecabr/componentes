import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: (contex, AsyncSnapshot<List<dynamic>> snaphot) {
      return ListView(
        children: _listaItems(snaphot.data),
      );
    },
  );
}

List<Widget> _listaItems(List<dynamic> data) {
  final List<Widget> opciones = [];
  data.forEach((opt) {
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: Icon(Icons.account_circle, color: Colors.red),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.brown),
      onTap: () {},
    );
    opciones..add(widgetTemp)..add(Divider());
  });

  return opciones;
}
