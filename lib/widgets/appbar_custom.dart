import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/botao_carrinho.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  const AppBarCustom({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titulo,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [BotaoCarrinho()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
