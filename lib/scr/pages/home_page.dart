import 'package:flutter/material.dart';
import 'package:udemy_componentes/scr/providers/menu_provider.dart';
import 'package:udemy_componentes/scr/utils/icono_string_utils.dart';

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
          children: _listaItems(snapshot.data, context),
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
        trailing: Icon(Icons.arrow_right, color: Colors.blue,),
        onTap: () {

          Navigator.pushNamed(context, opt['ruta']);
          
          /* final route = MaterialPageRoute(
            builder: (context){
              return AlertPage();
            }
          );
          Navigator.push(context, route); */


        },
      );

      opciones.add(widgetTemp);

    });

    return opciones;

  }
}
