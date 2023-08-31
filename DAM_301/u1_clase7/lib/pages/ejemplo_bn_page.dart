import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_clase7/pages/tab_bodega_page.dart';
import 'package:u1_clase7/pages/tab_compras_page.dart';
import 'package:u1_clase7/pages/tab_home_page.dart';
import 'package:u1_clase7/pages/tab_ventas_page.dart';

class EjemploBnPage extends StatefulWidget {
  const EjemploBnPage({Key? key}) : super(key: key);

  @override
  State<EjemploBnPage> createState() => _EjemploBnPageState();
}

class _EjemploBnPageState extends State<EjemploBnPage> {
  int paginaSeleccionada = 0;
  Widget pagina = TabHomePage();
  String titulo = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'BottomNav: $titulo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: pagina,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaSeleccionada,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(MdiIcons.home),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            label: 'Bodega',
            icon: Icon(MdiIcons.packageVariantClosed),
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            label: 'Compras',
            icon: Icon(MdiIcons.truckOutline),
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            label: 'Ventas',
            icon: Icon(MdiIcons.cashMultiple),
            backgroundColor: Colors.green,
          ),
        ],
        onTap: (index) {
          paginaSeleccionada = index;
          switch (paginaSeleccionada) {
            case 0:
              pagina = TabHomePage();
              titulo = 'Home';
              break;
            case 1:
              pagina = TabBodegaPage();
              titulo = 'Bodega';
              break;
            case 2:
              pagina = TabComprasPage();
              titulo = 'Compras';
              break;
            case 3:
              pagina = TabVentasPage();
              titulo = 'Ventas';
              break;
          }
        },
      ),
    );
  }
}
