import 'package:flutter/material.dart';
import 'package:u1_clase8/constants/texts.dart';

class ComprasPage extends StatelessWidget {
  const ComprasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Compras',
        style: textCentroPagina,
      ),
    );
  }
}
