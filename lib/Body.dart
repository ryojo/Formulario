import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController nomeController = new TextEditingController();
  final TextEditingController idadeController = new TextEditingController();
  String _ResultadoIdade = "";

  void _Enviar() {
    nomeController.text;
    int inputIdade = int.tryParse(idadeController.text);

// logica de criança, adolescente e adulto.
    if (inputIdade >= 4 && inputIdade <= 9) {
      setState(() {
        _ResultadoIdade = "você é uma criança 👦 👧";
      });
    }
    if (inputIdade >= 10 && inputIdade <= 19) {
      setState(() {
        _ResultadoIdade = "Você é um adolescente";
      });
    }
    if (inputIdade >= 20 && inputIdade <= 65) {
      setState(() {
        _ResultadoIdade = "você é um adulto! 👱‍♂ 👱‍♀ ";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Nome",
            ),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            controller: nomeController,
            maxLength: 60,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Idade",
            ),
            controller: idadeController,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            child: Text(
              _ResultadoIdade,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: _Enviar,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "Adivinhe!",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            ),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
