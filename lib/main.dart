import 'package:flutter/material.dart';

void main() => runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget {

  void responder(){
    print('Pergunta Respondida!');
  }

  void Function() funcaoQRetOutraFuncao(){
    return (){
      print('Pergunta Respondida #2!');
    };
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
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
              ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
              ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder, // funcaoQRetOutraFuncao(),
              ),
          ],
        ),
      ),
    );
  }
}