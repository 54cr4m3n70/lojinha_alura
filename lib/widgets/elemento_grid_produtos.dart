import 'package:flutter/material.dart';
import 'package:lojinha_alura/util/app_route.dart';
import 'package:lojinha_alura/widgets/degrade_elemento_grid_produtos.dart';
import 'package:lojinha_alura/widgets/imagem_elemento_grid_produto.dart';
import 'package:lojinha_alura/widgets/titulo_elemento_grid_produtos.dart';

import '/model/movel.dart';

class ElementoGridProdutos extends StatelessWidget {
  final Movel movel;
  const ElementoGridProdutos({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoute.detalhes, arguments: movel);
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 8,
            color: Colors.black12,
          )
        ]),
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ImagemElementoGridProdutos(imagem: movel.foto),
              DegradeElementoGridProdutos(),
              TituloElementoGridProdutos(titulo: movel.titulo),
            ],
          ),
        ),
      ),
    );
  }
}
