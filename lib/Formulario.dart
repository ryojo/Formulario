import 'package:flutter/material.dart';
import 'package:formulario/Body.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _fundo = AssetImage("imagens/fundo.jpg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Formulario de idade",
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              //  border: Border.all(width:3, color: Colors.amber),

              ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[Image(image: _fundo), Body()],
            ),
          ),
        ));
  }
}
