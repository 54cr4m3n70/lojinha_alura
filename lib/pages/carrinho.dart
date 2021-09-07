import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/appbar_custom.dart';

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
      body: const Text('Estamos no carrinho'),
    );
  }
}
