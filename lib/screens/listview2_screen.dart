import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var vengadores = ["Capitan America", "Iron Man", "Hulk", "Thor"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
          //tamano de lista
          itemCount: vengadores.length,
          //constructor para cada lista
          itemBuilder: (context, index) => ListTile(
            title: Text(vengadores[index]),
            trailing: Icon(Icons.chevron_right, color: Colors.red),
            onTap: () {
              //variable que optiene opcion seleccionada
              var opc = vengadores[index];
              //mostrar variable en consola
              print(opc);
            },
          ),
          //Creamos separadores de cada lista
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
