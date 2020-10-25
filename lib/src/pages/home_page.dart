import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        centerTitle: true,
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  return FutureBuilder(
    future: menuProvider.cargarData(),
    //La data inicial va a hacer un lista vacia, que es el valor que se le va a enviar
    //a snaphot.data, simper vamo a tener algo en el data.
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

  //Validamos si la data esta vacio

  data.forEach((opt) {
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: getIcon(opt['icon']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.brown),
      onTap: () {
        Navigator.pushNamed(context, opt['ruta']);
        //final route = MaterialPageRoute(builder: (context) => AlertPage());
        //Navigator.push(context, route);
      },
    );
    opciones..add(widgetTemp)..add(Divider());
  });

  return opciones;
}
