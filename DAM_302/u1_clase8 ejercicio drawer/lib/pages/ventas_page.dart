import 'package:flutter/material.dart';
import 'package:u1_clase8/constants/texts.dart';

class VentasPage extends StatelessWidget {
  const VentasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Ventas',
        style: textCentroPagina,
      ),
    );
  }
}
