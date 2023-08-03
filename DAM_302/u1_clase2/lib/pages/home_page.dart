import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto1 = TextStyle(fontSize: 30, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: Text('Ejemplo Clase', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        leading: Icon(Icons.android, color: Colors.white, size: 35),
        centerTitle: true,
      ),
      //BODY
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //primer row, uno dos tres
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Uno', style: estiloTexto1),
                Text('Dos', style: estiloTexto1),
                Text('Tres', style: estiloTexto1),
              ],
            ),
            //segundo row, íconos
            Container(
              margin: EdgeInsets.only(top: 15),
              color: Colors.lightBlue.shade100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.home, size: 50, color: Colors.purple),
                  Icon(Icons.favorite, size: 50, color: Colors.red),
                  Icon(Icons.star, size: 50, color: Colors.yellow),
                ],
              ),
            ),
            //tercer container
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
              child: Text(
                'Hola Mundo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            //cuarto
            Row(
              children: [
                Container(
                  color: Color(0xFF66BFEF),
                  child: Text('1° Container', style: TextStyle(fontSize: 20)),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xFFA45ABB),
                    child: Text('2° Container', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
