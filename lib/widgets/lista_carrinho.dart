import 'package:flutter/material.dart';
import 'package:lojinha_alura/inicio.dart';
import 'package:lojinha_alura/model/item_carrinho.dart';
import 'package:lojinha_alura/model/movel.dart';

class ListaCarrinho extends StatelessWidget {
  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;
  ListaCarrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: carrinho.length,
      itemBuilder: (BuildContext cxt, index) {
        ItemCarrinho item = carrinho[index];
        Movel movel = item.movel;
        return Container(
          margin: EdgeInsets.all(16),
          child: Card(
              clipBehavior: Clip.hardEdge,
              child: Row(
                children: [
                  Image.asset(
                    'lib/assets/imagens/${movel.foto}',
                    height: 92,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movel.titulo),
                        Text('${movel.preco}'),
                        Text('${item.quantidade}'),
                      ],
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
