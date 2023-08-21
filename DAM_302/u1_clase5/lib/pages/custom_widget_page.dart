import 'package:flutter/material.dart';
import 'package:u1_lab01_r/widgets/product_card.dart';
import '../constants/productos.dart';

class CustomWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Custom Widget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: productos.map((prod) {
            return ProductCard(
              nombre: prod['nombre'].toString(),
              precio: prod['precio'].toString(),
              stock: prod['stock'].toString(),
            );
          }).toList(),
        ),
      ),
    );
  }
}
