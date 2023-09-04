import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:u1_clase6/constants/colors.dart';

class ListTileNav extends StatelessWidget {
  final String? titulo;
  final String subtitulo;
  final IconData icono;
  final Widget? destino;

  ListTileNav({this.titulo, this.subtitulo = '', this.icono = Icons.android, this.destino});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.titulo ?? 'Sin título',
        style: GoogleFonts.oswald(),
      ),
      subtitle: Text(
        this.subtitulo,
        style: GoogleFonts.phudu(
          textStyle: TextStyle(color: Colors.blue),
        ),
      ),
      leading: Icon(this.icono, size: 35, color: colAccent),
      onTap: () {
        if (this.destino != null) {
          PageRouteBuilder pageRouteBuilder = PageRouteBuilder(
            //Duración de la transición
            transitionDuration: Duration(milliseconds: 300),

            //Construir ruta a página de destino
            pageBuilder: (context, animation, secondaryAnimation) {
              return this.destino!;
            },

            //Definir la transición entre páginas
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              // return SlideTransition(
              //   position: Tween(begin: Offset(-1, 0), end: Offset.zero).animate(animation),
              //   child: child,
              // );
              return FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.0).animate(animation),
                child: child,
              );
            },
          );
          Navigator.push(context, pageRouteBuilder);
        }
      },
    );
  }
}
