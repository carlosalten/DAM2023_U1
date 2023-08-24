import 'package:flutter/material.dart';

class VentasPage extends StatelessWidget {
  const VentasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventas')),
      body: Center(
        child: Text(
          'Pagina de Ventas',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
