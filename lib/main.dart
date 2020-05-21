import 'package:flutter/material.dart';
import './questao.dart';

void main() => runApp(PerguntasApp());

class _PerguntaAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {

    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
              ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
              ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
              ),
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {

  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }

}