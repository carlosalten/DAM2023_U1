import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController edadCtrl = TextEditingController();
  String resultados = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: Text('Ejemplo Clase 3'),
        backgroundColor: Colors.blue,
      ),
      //BODY
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              //campo email
              Container(
                child: TextFormField(
                  // textAlign: TextAlign.start,
                  controller: emailCtrl,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Escriba su correo electrónico',
                  ),
                ),
              ),
              //campo edad
              Container(
                child: TextFormField(
                  controller: edadCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Edad',
                    hintText: 'Ingrese su edad actual',
                  ),
                ),
              ),
              //boton
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                child: FilledButton(
                  child: Text('Enviar Datos'),
                  onPressed: () {
                    String email = emailCtrl.text;
                    int edad = int.tryParse(edadCtrl.text) ?? 0;

                    // print('EMAIL:' + email + ' EDAD:' + edad.toString());
                    print('EMAIL:$email EDAD:$edad');

                    setState(() {
                      resultados = 'EMAIL:$email EDAD:$edad';
                    });
                  },
                ),
              ),
              //resultados
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(resultados),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
