import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto1 = TextStyle(fontSize: 30, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: Text('Ejemplo Clase', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
        centerTitle: true,
        leading: Icon(Icons.android, size: 40, color: Colors.white),
      ),
      //BODY
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //primera fila, textos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Uno', style: estiloTexto1),
                Text('Dos', style: estiloTexto1),
                Text('Tres', style: estiloTexto1),
              ],
            ),
            //segunda fila, iconos
            Container(
              color: Colors.lightGreen.shade200,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(top: 25),
              // margin: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
              // margin: EdgeInsets.fromLTRB(5, 10, 5, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, size: 50, color: Colors.blue),
                  Icon(Icons.favorite, size: 50, color: Colors.red),
                  Icon(Icons.star, size: 50, color: Colors.yellow),
                ],
              ),
            ),
            //tercera fila
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
              // color: Colors.lightBlue.shade100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple, width: 3),
                color: Colors.lightBlue.shade100,
              ),
              child: Text(
                'Hola Mundo',
                style: TextStyle(fontSize: 30),
              ),
            ),

            //cuarta fila
            Row(
              children: [
                Container(
                  color: Color(0xFFDD735A),
                  child: Text('Container 1', style: TextStyle(fontSize: 24)),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xFF66BFEF),
                    child: Text('Container 2', style: TextStyle(fontSize: 24)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
