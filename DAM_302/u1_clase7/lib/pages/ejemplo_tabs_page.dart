import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_clase7/pages/tab_bodega_page.dart';
import 'package:u1_clase7/pages/tab_home_page.dart';
import 'package:u1_clase7/pages/tab_ventas_page.dart';

class EjemploTabsPage extends StatelessWidget {
  const EjemploTabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Ejemplo Tabs',
            style: TextStyle(color: Colors.white),
          ),
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey.shade400,
            tabs: [
              Tab(text: 'Home', icon: Icon(MdiIcons.home)),
              Tab(text: 'Bodega', icon: Icon(MdiIcons.truckOutline)),
              Tab(text: 'Ventas', icon: Icon(MdiIcons.cashMultiple)),
              // Tab(text: 'Home', icon: Icon(MdiIcons.home)),
              // Tab(text: 'Bodega', icon: Icon(MdiIcons.truckOutline)),
              // Tab(text: 'Ventas', icon: Icon(MdiIcons.cashMultiple)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabHomePage(),
            TabBodegaPage(),
            TabVentasPage(),
          ],
        ),
      ),
    );
  }
}
