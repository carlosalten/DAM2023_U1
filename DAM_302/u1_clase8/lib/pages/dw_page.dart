import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_clase8/pages/bodega_page.dart';
import 'package:u1_clase8/pages/compras_page.dart';
import 'package:u1_clase8/pages/ventas_page.dart';

class DwPage extends StatelessWidget {
  const DwPage({Key? key}) : super(key: key);

  void navegar(BuildContext context, int destino) {
    //crear ruta
    MaterialPageRoute ruta = MaterialPageRoute(builder: (context) {
      switch (destino) {
        case 1:
          return BodegaPage();
        case 2:
          return ComprasPage();
        case 3:
          return VentasPage();
        default:
          return BodegaPage();
      }
    });
    //cerrar drawer
    Navigator.pop(context);
    //navegar a la pagina
    Navigator.push(context, ruta);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Drawer'),
      ),
      body: Container(
        width: double.infinity,
        height: 200,
        color: Colors.lightBlue.shade100,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
            Positioned(
              bottom: -20,
              right: 20,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepPurple, width: 4),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/user.jpg'),
                            ),
                          ),
                        ),
                        Text('Nombre del usuario'),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text('Bodega'),
                    leading: Icon(
                      MdiIcons.packageVariantClosed,
                      color: Colors.deepOrange,
                    ),
                    onTap: () => navegar(context, 1),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Compras'),
                    leading: Icon(
                      MdiIcons.truckOutline,
                      color: Colors.deepOrange,
                    ),
                    onTap: () => navegar(context, 2),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Ventas'),
                    leading: Icon(
                      MdiIcons.cashMultiple,
                      color: Colors.deepOrange,
                    ),
                    onTap: () => navegar(context, 3),
                  ),
                  Divider(),
                ],
              ),
            ),
            ListTile(
              title: Text('Salir'),
              leading: Icon(
                MdiIcons.logout,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
