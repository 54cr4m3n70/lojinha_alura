import 'package:flutter/material.dart';

class ImagemElementoGridProdutos extends StatelessWidget {
  final String imagem;
  const ImagemElementoGridProdutos({Key? key, required this.imagem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        'lib/assets/imagens/$imagem',
        fit: BoxFit.cover,
      ),
    );
  }
}
