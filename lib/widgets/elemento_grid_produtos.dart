import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/imagem_elemento_grid_produto.dart';

import '/model/movel.dart';

class ElementoGridProdutos extends StatelessWidget {
  final Movel movel;
  const ElementoGridProdutos({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImagemElementoGridProdutos(imagem: movel.foto);
  }
}
