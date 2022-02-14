import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

//carregando o DESIGN da PAG inicial...
  @override
  Widget build(BuildContext context) {
    //criando um container...
    return Container(
      width: double.infinity,
      //ESPACO no APP
      margin: EdgeInsets.all(10),
      //tamanho do TEXTO que no caso é a pergunta... Tamanho da FONTE PERGUNTA
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
