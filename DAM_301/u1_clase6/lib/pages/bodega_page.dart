import 'package:flutter/material.dart';

class BodegaPage extends StatelessWidget {
  const BodegaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bodega')),
      body: Center(
        child: Column(
          children: [
            Text(
              'Pagina de Bodega',
              style: TextStyle(fontSize: 24),
            ),
            FilledButton(
              child: Text('Volver'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
