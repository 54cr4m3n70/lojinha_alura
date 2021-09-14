import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/card_detalhes.dart';

import '/model/movel.dart';
import '/widgets/appbar_custom.dart';

class Detalhes extends StatefulWidget {
  final Movel movel;
  const Detalhes({Key? key, required this.movel}) : super(key: key);

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/imagens/${widget.movel.foto}'),
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
              movel: widget.movel,
              atualizaPagina: atualiza,
            ),
          ),
        ),
      ),
    );
  }

  atualiza() {
    setState(() {});
  }
}
