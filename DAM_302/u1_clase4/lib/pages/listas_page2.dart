import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ListasPage2 extends StatelessWidget {
  final alumnos = [
    {'nombre': 'alumno1', 'email': 'alumno1@usm.cl'},
    {'nombre': 'alumno2', 'email': 'alumno2@usm.cl'},
    {'nombre': 'alumno3', 'email': 'alumno3@usm.cl'},
    {'nombre': 'alumno4', 'email': 'alumno4@usm.cl'},
    {'nombre': 'alumno5', 'email': 'alumno5@usm.cl'},
    {'nombre': 'alumno6', 'email': 'alumno6@usm.cl'},
    {'nombre': 'alumno7', 'email': 'alumno7@usm.cl'},
    {'nombre': 'alumno8', 'email': 'alumno8@usm.cl'},
    {'nombre': 'alumno9', 'email': 'alumno9@usm.cl'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: Text('Ejemplo ListView'),
        backgroundColor: Colors.deepPurple,
      ),

      //BODY
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: alumnos.map((alumno) {
            return Column(
              children: [
                ListTile(
                  leading: Icon(
                    MdiIcons.accountCircle,
                    color: Colors.red,
                    size: 40,
                  ),
                  title: Text(
                    alumno['nombre'].toString(),
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(alumno['email'].toString()),
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
