import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_clase6/pages/bodega_page.dart';
import 'package:u1_clase6/pages/ventas_page.dart';
import 'package:u1_clase6/widgets/list_tile_nav.dart';

class Nav1Page extends StatelessWidget {
  const Nav1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Nav'),
        leading: Icon(MdiIcons.navigationOutline, size: 30),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            ListTileNav(
              titulo: 'Bodega',
              subtitulo: 'Control de stock e inventario',
              icono: MdiIcons.packageVariantClosed,
              destino: BodegaPage(),
            ),
            Divider(),
            ListTileNav(
              titulo: 'Ventas',
              subtitulo: 'Venta de productos a clientes',
              icono: MdiIcons.cashMultiple,
              destino: VentasPage(),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
