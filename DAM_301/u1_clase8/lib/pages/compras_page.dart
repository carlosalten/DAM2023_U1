import 'package:flutter/material.dart';

class ComprasPage extends StatelessWidget {
  const ComprasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página de Compras')),
      body: Center(child: Text('Compras')),
    );
  }
}
