import 'package:flutter/material.dart';

class ListTileNav extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final IconData icono;
  final Widget? destino;

  ListTileNav({this.titulo = '', this.subtitulo = '', this.icono = Icons.android, this.destino});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.titulo),
      subtitle: Text(this.subtitulo),
      leading: Icon(
        this.icono,
        size: 35,
        color: Colors.deepOrange,
      ),
      onTap: () {
        print('TAP ${this.titulo}');
        if (this.destino != null) {
          MaterialPageRoute ruta = MaterialPageRoute(
            builder: (context) {
              return this.destino!;
            },
          );

          Navigator.push(context, ruta);
        }
      },
    );
  }
}
