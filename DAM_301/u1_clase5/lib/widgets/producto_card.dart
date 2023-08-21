import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProductoCard extends StatelessWidget {
  final String nombre;
  final String precio;
  final String stock;

  ProductoCard({this.nombre = '', this.precio = '0', this.stock = '0'});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade50,
        border: Border.all(width: 2, color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.nombre,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.blue.shade200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                MdiIcons.laptop,
                size: 30,
                color: Colors.deepOrange,
              ),
              Text(
                '\$${this.precio}',
                style: TextStyle(fontSize: 18),
              ),
              Text('${this.stock} unid.'),
            ],
          ),
        ],
      ),
    );
  }
}
