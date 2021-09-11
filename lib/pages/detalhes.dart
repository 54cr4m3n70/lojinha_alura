import 'package:flutter/material.dart';

import '/model/movel.dart';
import '/util/app_route.dart';
import '/widgets/appbar_custom.dart';

class Detalhes extends StatelessWidget {
  final Movel movel;
  const Detalhes({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/imagens/${movel.foto}'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustom(
          titulo: '${movel.titulo}',
        ),
        body: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoute.carrinho);
          },
          child: const Text('Agora para a pagina carrinho'),
        ),
      ),
    );
  }
}
