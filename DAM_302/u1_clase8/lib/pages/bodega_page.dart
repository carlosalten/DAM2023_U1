import 'package:flutter/material.dart';

class BodegaPage extends StatelessWidget {
  const BodegaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bodega Page')),
      body: Center(
        child: Text('Bodega'),
      ),
    );
  }
}
