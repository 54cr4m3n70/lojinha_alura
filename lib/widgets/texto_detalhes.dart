import 'package:flutter/material.dart';

class TextoDetalhes extends StatelessWidget {
  final String texto;
  const TextoDetalhes({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 10,
      ),
      child: Text(texto),
    );
  }
}
