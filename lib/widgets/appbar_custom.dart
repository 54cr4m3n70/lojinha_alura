import 'package:flutter/material.dart';

import '/widgets/botao_carrinho.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  final bool isPageCarrinho;
  const AppBarCustom(
      {Key? key, required this.titulo, this.isPageCarrinho = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: Text(
        titulo,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        Visibility(
          visible: !isPageCarrinho,
          child: BotaoCarrinho(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
