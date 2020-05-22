import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(PerguntasApp());

class _PerguntaAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é o seu instruto favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Antônio']
      }
    ];

    // ABORDAGEM IMPERATIVA
    List<Widget> respostas = [];

    for(String textoResp in perguntas[_perguntaSelecionada]['respostas']){
      // print(textoResp);      
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

// DIFERENÇA ENTRE CÓDIGO IMPERATIVO E DECLARATIVO
// HTML DECLARATIVO: DIZEMOS O QUE QUEREMOS
// SQL DECLARATIVO: DIZEMOS O QUE QUEREMOS E NÃO DIZEMOS DA FORMA COMO QUEREMOS ISSO