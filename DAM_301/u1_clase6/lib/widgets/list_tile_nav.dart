import 'package:flutter/material.dart';

class ListTileNav extends StatelessWidget {
  final String? titulo;
  final String subtitulo;
  final IconData icono;
  final Widget? destino;

  ListTileNav({this.titulo, this.subtitulo = '', this.icono = Icons.android, this.destino});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.titulo ?? 'Sin título'),
      subtitle: Text(this.subtitulo),
      leading: Icon(this.icono, size: 35, color: Colors.deepOrange),
      onTap: () {
        print('TAP ${this.titulo}');
        //si destino no es null, navegar a esa página
        if (this.destino != null) {
          //generar ruta
          MaterialPageRoute ruta = MaterialPageRoute(builder: (context) {
            return this.destino!;
          });
          //navegar a la página
          Navigator.push(context, ruta);
        }
      },
    );
  }
}
