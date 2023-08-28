import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_clase7/pages/tab_bodega_page.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Ejemplo BottomNav',
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
            icon: Icon(MdiIcons.truckOutline),
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            label: 'Ventas',
            icon: Icon(MdiIcons.cashMultiple),
            backgroundColor: Colors.deepPurple,
          ),
        ],
        onTap: (index) {
          // print('INDICE: $index');
          setState(() {
            this.paginaSeleccionada = index;

            switch (this.paginaSeleccionada) {
              case 0:
                pagina = TabHomePage();
                break;
              case 1:
                pagina = TabBodegaPage();
                break;
              case 2:
                pagina = TabVentasPage();
                break;
            }
          });
        },
      ),
    );
  }
}
