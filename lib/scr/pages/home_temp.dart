import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

//! Usando la propiedad map
  List<Widget> _crearItemsCorto() {
    var widgets = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + ''),
            subtitle: Text('Sub title'),
            leading: Icon(
              Icons.account_circle
            ),
            trailing: Icon(
              Icons.arrow_back
            ),
            
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }
}
