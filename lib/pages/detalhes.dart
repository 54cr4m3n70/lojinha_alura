import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/card_detalhes.dart';

import '/model/movel.dart';
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
          titulo: '',
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(16),
            height: 208,
            child: CardDetalhes(
              movel: movel,
            ),
          ),
        ),
      ),
    );
  }
}
