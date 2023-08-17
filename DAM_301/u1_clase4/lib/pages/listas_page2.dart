import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ListasPage2 extends StatelessWidget {
  final alumnos = [
    {'nombre': 'alumno1', 'email': 'alumno1@usm.cl'},
    {'nombre': 'alumno2', 'email': 'alumno2@usm.cl'},
    {'nombre': 'alumno3', 'email': 'alumno3@usm.cl'},
    {'nombre': 'alumno4', 'email': 'alumno4@usm.cl'},
    {'nombre': 'alumno5', 'email': 'alumno5@usm.cl'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Clase 4'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: alumnos.map((alumno) {
            return Column(
              children: [
                ListTile(
                  title: Text(alumno['nombre'].toString()),
                  subtitle: Text(alumno['email'].toString()),
                  leading: Icon(MdiIcons.accountCircle, size: 35, color: Colors.orange),
                  trailing: Container(
                    child: OutlinedButton(
                      child: Text('Matricular'),
                      onPressed: () {},
                    ),
                  ),
                ),
                Divider(),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
