import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/degrade_elemento_grid_produtos.dart';
import 'package:lojinha_alura/widgets/imagem_elemento_grid_produto.dart';
import 'package:lojinha_alura/widgets/titulo_elemento_grid_produtos.dart';

import '/model/movel.dart';

class ElementoGridProdutos extends StatelessWidget {
  final Movel movel;
  const ElementoGridProdutos({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImagemElementoGridProdutos(imagem: movel.foto),
        DegradeElementoGridProdutos(),
        TituloElementoGridProdutos(titulo: movel.titulo),
      ],
    );
  }
}
