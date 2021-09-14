import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/model/item_carrinho.dart';

import '../inicio.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(
            texto: movel.titulo,
            estilo: Theme.of(context).textTheme.headline1,
          ),
          TextoDetalhes(texto: movel.descricao),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatacaoReais(movel.preco),
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    _adicionarItemCarrinho(
                        ItemCarrinho(movel: movel, quantidade: 1));
                  },
                  child: Text('Comprar'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _adicionarItemCarrinho(ItemCarrinho item) {
    Inicio.itensCarrinho.add(item);
  }
}
