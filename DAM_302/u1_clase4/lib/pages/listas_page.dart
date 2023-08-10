import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ListasPage extends StatelessWidget {
  const ListasPage({Key? key}) : super(key: key);

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
          children: [
            ListTile(
              leading: Icon(
                MdiIcons.accountCircle,
                size: 40,
                color: Colors.orange,
              ),
              title: Text(
                'Alumno 1',
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('alumno1@usm.cl'),
              trailing: Container(
                child: OutlinedButton(
                  child: Text('Matricular'),
                  onPressed: () {},
                ),
              ),
            ),
            Divider(
              color: Colors.purple,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                MdiIcons.accountCircle,
                size: 40,
                color: Colors.orange,
              ),
              title: Text(
                'Alumno 2',
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('alumno2@usm.cl'),
              trailing: Container(
                child: OutlinedButton(
                  child: Text('Matricular'),
                  onPressed: () {},
                ),
              ),
            ),
            Divider(
              color: Colors.purple,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
