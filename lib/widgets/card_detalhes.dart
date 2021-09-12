import 'package:flutter/material.dart';

import '/model/movel.dart';
import '/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  const CardDetalhes({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextoDetalhes(texto: movel.titulo),
          TextoDetalhes(texto: movel.descricao),
        ],
      ),
    );
  }
}
