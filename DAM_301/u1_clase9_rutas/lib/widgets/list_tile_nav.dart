import 'package:flutter/material.dart';

class ListTileNav extends StatelessWidget {
  final String? titulo;
  final String subtitulo;
  final IconData icono;
  // final Widget? destino;
  final String destino;

  ListTileNav({this.titulo, this.subtitulo = '', this.icono = Icons.android, this.destino = '/'});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.titulo ?? 'Sin título'),
      subtitle: Text(this.subtitulo),
      leading: Icon(this.icono, size: 35, color: Colors.deepOrange),
      onTap: () {
        Navigator.pushNamed(context, this.destino);
      },
    );
  }
}
