import 'package:flutter/material.dart';
import 'package:lojinha_alura/inicio.dart';
import 'package:lojinha_alura/model/item_carrinho.dart';
import 'package:lojinha_alura/model/movel.dart';

class ListaCarrinho extends StatelessWidget {
  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;
  ListaCarrinho({Key? key}) : super(key: key);

  _aumentarQuantidade(ItemCarrinho item) {
    item.quantidade++;
  }

  _dimnuiQuantidade(ItemCarrinho item) {
    item.quantidade--;
  }

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
                  Expanded(
                    child: Container(
                      height: 92,
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(movel.titulo),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${movel.preco}'),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => _aumentarQuantidade(item),
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      child: Icon(
                                        Icons.add,
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                  Text('${item.quantidade}'),
                                  GestureDetector(
                                    onTap: () => _dimnuiQuantidade(item),
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      child: Icon(
                                        Icons.remove,
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
