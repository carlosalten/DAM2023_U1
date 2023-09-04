import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_clase8/constants/colors.dart';
import 'package:u1_clase8/constants/texts.dart';
import 'package:u1_clase8/pages/bodega_page.dart';
import 'package:u1_clase8/pages/compras_page.dart';
import 'package:u1_clase8/pages/home_page.dart';
import 'package:u1_clase8/pages/ventas_page.dart';

class DwPage extends StatefulWidget {
  const DwPage({Key? key}) : super(key: key);

  @override
  State<DwPage> createState() => _DwPageState();
}

class _DwPageState extends State<DwPage> {
  Widget paginaActual = HomePage();
  Color colorAppBar = colHome;

  void navegar(BuildContext context, int destino) {
    //cambiar página y colores
    switch (destino) {
      case 1:
        paginaActual = BodegaPage();
        colorAppBar = colBodega;
        break;
      case 2:
        paginaActual = ComprasPage();
        colorAppBar = colCompras;
        break;
      case 3:
        paginaActual = VentasPage();
        colorAppBar = colVentas;
        break;
      default:
        paginaActual = HomePage();
        colorAppBar = colHome;
        break;
    }

    //cerrar drawer
    Navigator.pop(context);

    //aplicar cambios
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ejemplo 2 Drawer',
          style: textAppbarTitulo,
        ),
        backgroundColor: colorAppBar,
      ),
      body: paginaActual,
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
                    title: Text('Home'),
                    leading: Icon(
                      MdiIcons.packageVariantClosed,
                      color: colHome,
                    ),
                    onTap: () => navegar(context, 0),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Bodega'),
                    leading: Icon(
                      MdiIcons.packageVariantClosed,
                      color: colBodega,
                    ),
                    onTap: () => navegar(context, 1),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Compras'),
                    leading: Icon(
                      MdiIcons.truckOutline,
                      color: colCompras,
                    ),
                    onTap: () => navegar(context, 2),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Ventas'),
                    leading: Icon(
                      MdiIcons.cashMultiple,
                      color: colVentas,
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
