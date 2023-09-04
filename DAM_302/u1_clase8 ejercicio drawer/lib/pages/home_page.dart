import 'package:flutter/material.dart';
import 'package:u1_clase8/constants/texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home',
        style: textCentroPagina,
      ),
    );
  }
}
