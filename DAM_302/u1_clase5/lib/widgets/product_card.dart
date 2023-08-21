import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProductCard extends StatelessWidget {
  final String nombre;
  final String precio;
  final String stock;

  ProductCard({this.nombre = '', this.precio = '', this.stock = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade50,
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          Text(
            this.nombre,
            style: TextStyle(fontSize: 20),
          ),
          Divider(
            color: Colors.blue.shade200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                MdiIcons.laptop,
                color: Colors.deepOrange,
                size: 30,
              ),
              Text(
                '\$ ${this.precio}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${this.stock} unid.'),
            ],
          ),
        ],
      ),
    );
  }
}
