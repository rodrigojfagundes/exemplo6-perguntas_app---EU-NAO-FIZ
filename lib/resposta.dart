import 'package:flutter/material.dart';

//criando a classe RESPOSTA
class Resposta extends StatelessWidget {
//essa classe recebe o TEXTO(perguntas) q ta dentro do dicionario PERGUNTAS...
  final String texto;
  //EU ACHO q uma funcao q guarda qual foi a RESPOSTA q foi SELECIONADA
  final void Function() quandoSelecionado;

//Resposta recebe a LISTA[texto] com as varias alternativas de RESPOSTAS
//quandoSelecionado é uma funcao q armazena QUAL foi a RESPOSTA q escolhemos clicar...
  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
