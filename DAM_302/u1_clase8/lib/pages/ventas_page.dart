import 'package:flutter/material.dart';

class VentasPage extends StatelessWidget {
  const VentasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventas Page')),
      body: Center(
        child: Text('Ventas'),
      ),
    );
  }
}
