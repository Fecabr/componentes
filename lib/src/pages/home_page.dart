import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
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
        children: _listaItems(snaphot.data, contex),
      );
    },
  );
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];
  data.forEach((opt) {
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: getIcon(opt['icon']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.brown),
      onTap: () {
        final route = MaterialPageRoute(builder: (context) => AlertPage());
        Navigator.push(context, route);
      },
    );
    opciones..add(widgetTemp)..add(Divider());
  });

  return opciones;
}
