import 'package:flutter/material.dart';
import 'package:lojinha_alura/util/app_route.dart';

class BotaoCarrinho extends StatelessWidget {
  const BotaoCarrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoute.carrinho);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            )),
        alignment: Alignment.centerRight,
        height: 40,
        padding: EdgeInsets.only(right: 20, left: 20),
        child: Image(
          height: 30,
          image: AssetImage('lib/assets/icones/carrinho.png'),
        ),
      ),
    );
  }
}
