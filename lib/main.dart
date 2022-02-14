//realizando as importacoes
import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

//indicando qual sera a funcao q iniciara o app
main() => runApp(new PerguntaApp());

//criando a classe _PerguntaAppSTATE... Ela vai recebe as caracteristicas
//da classe PerguntaApp q é a classe criadaa cima
class _PerguntaAppState extends State<PerguntaApp> {
//declarando as variaveis
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  //criando um DICIONARIO ou CONSTANTE e colocando a pergunta as respostas e os pontos
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    //outro dicionario de perg e resp
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 1},
      ],
    },
    //dicionario de perg e resp
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {'texto': 'Leo', 'pontuacao': 10},
        {'texto': 'Maria', 'pontuacao': 5},
        {'texto': 'João', 'pontuacao': 3},
        {'texto': 'Pedro', 'pontuacao': 1},
      ],
    }
  ];

//essa funcao recebe uma pontuacao que é somada a pontuacaoTOTAL,
//e segue para a proxima pergunta...
  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

//essa funcao zera os valores das variveis da perg selecionada e da pontuacao
  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

//verifica se o valor da pergunta selecionada é MENOR q o VALOR total do
//DICIONARIO de PERGUNTAS...
  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

//relacionado a parte de design do app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),

        //no body vamos executar a funcao pergunta selecionada
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
