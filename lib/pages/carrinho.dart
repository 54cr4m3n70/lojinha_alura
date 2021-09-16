import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/appbar_custom.dart';
import 'package:lojinha_alura/widgets/lista_carrinho.dart';

class Carrinho extends StatelessWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustom(
        titulo: 'Carrinho',
        isPageCarrinho: true,
      ),
      body: ListaCarrinho(),
    );
  }
}
