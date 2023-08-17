import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ListasPage extends StatelessWidget {
  const ListasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Clase 4'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            ListTile(
              title: Text('Alumno 1'),
              subtitle: Text('alumno1@usm.cl'),
              trailing: Container(
                child: OutlinedButton(
                  child: Text('Matricular'),
                  onPressed: () {},
                ),
              ),
              leading: Icon(
                MdiIcons.accountCircle,
                size: 35,
                color: Colors.orange,
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.lightBlue,
            ),
            ListTile(
              title: Text('Alumno 2'),
              subtitle: Text('alumno2@usm.cl'),
              trailing: Container(
                child: OutlinedButton(
                  child: Text('Matricular'),
                  onPressed: () {},
                ),
              ),
              leading: Icon(
                MdiIcons.accountCircle,
                size: 35,
                color: Colors.orange,
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
