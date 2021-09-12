import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '/model/movel.dart';
import '/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  const CardDetalhes({Key? key, required this.movel}) : super(key: key);

  formatacaoReais(int preco) {
    final currencyReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    return currencyReais.format(preco);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextoDetalhes(texto: movel.titulo),
          TextoDetalhes(texto: movel.descricao),
          Row(
            children: [
              Text(formatacaoReais(movel.preco)),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  primary: Colors.black,
                ),
                onPressed: () {},
                child: Text('Comprar'),
              )
            ],
          )
        ],
      ),
    );
  }
}
