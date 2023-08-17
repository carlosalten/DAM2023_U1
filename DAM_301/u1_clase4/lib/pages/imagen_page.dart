import 'package:flutter/material.dart';

class ImagenPage extends StatelessWidget {
  const ImagenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Imagen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Image(
          image: AssetImage('assets/images/mario_u_deluxe.jpg'),
        ),
      ),
    );
  }
}
