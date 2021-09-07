import 'package:flutter/material.dart';
import 'package:lojinha_alura/util/app_route.dart';

class Detalhes extends StatelessWidget {
  const Detalhes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.carrinho);
        },
        child: const Text('Agora para a pagina carrinho'),
      ),
    );
  }
}
