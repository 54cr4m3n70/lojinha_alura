import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/model/item_carrinho.dart';

import '../inicio.dart';
import '/model/movel.dart';
import '/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  final Function atualizaPagina;

  const CardDetalhes({
    Key? key,
    required this.movel,
    required this.atualizaPagina,
  }) : super(key: key);

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
                    _verificarListaCarrinho(
                      Inicio.itensCarrinho,
                      ItemCarrinho(movel: movel, quantidade: 1),
                    );
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

  void _adicionarItemCarrinho(ItemCarrinho item) {
    Inicio.itensCarrinho.contains(item.movel)
        ? Inicio.itensCarrinho[Inicio.itensCarrinho.indexOf(item)].quantidade++
        : Inicio.itensCarrinho.add(item);
    atualizaPagina();
  }

  void _verificarListaCarrinho(List<ItemCarrinho> lista, ItemCarrinho item) {
    int indiceMovel = lista.indexWhere((item) => item.movel == movel);
    if (indiceMovel >= 0) {
      lista[indiceMovel].quantidade = lista[indiceMovel].quantidade + 1;
    } else {
      _adicionarItemCarrinho(item);
    }
  }
}
