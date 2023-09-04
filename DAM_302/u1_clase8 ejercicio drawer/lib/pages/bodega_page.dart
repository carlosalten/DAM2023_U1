import 'package:flutter/material.dart';
import 'package:u1_clase8/constants/texts.dart';

class BodegaPage extends StatelessWidget {
  const BodegaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Bodega',
        style: textCentroPagina,
      ),
    );
  }
}
