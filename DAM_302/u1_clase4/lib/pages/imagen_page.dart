import 'package:flutter/material.dart';

class ImagenPage extends StatelessWidget {
  const ImagenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo Imagen')),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Image(
            image: AssetImage('assets/images/mario_u_deluxe.jpg'),
          ),
        ),
      ),
    );
  }
}
