import 'package:flutter/material.dart';
import 'package:udemy_componentes/scr/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Udemy Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [], //opcional
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.account_circle),
        trailing: Icon(Icons.arrow_right, color: Colors.blue,),
        onTap: () {

        },
      );

      opciones.add(widgetTemp);

    });

    return opciones;

  }
}
