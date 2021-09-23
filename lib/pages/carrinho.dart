import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/inicio.dart';
import 'package:lojinha_alura/widgets/appbar_custom.dart';
import 'package:lojinha_alura/widgets/lista_carrinho.dart';

class Carrinho extends StatefulWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  @override
  Widget build(BuildContext context) {
    int valorTotal = _calculaTotal();
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'total',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              formatacaoReais.format(valorTotal),
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustom(
        titulo: 'Carrinho',
        isPageCarrinho: true,
      ),
      body: ListaCarrinho(
        atualiza: _atualiza,
      ),
    );
  }

  _atualiza() {
    setState(() {});
  }

  int _calculaTotal() {
    if (Inicio.itensCarrinho.isNotEmpty) {
      return Inicio.itensCarrinho
          .map((item) => item.movel.preco * item.quantidade)
          .reduce((precoAtual, precoNovo) => precoAtual + precoNovo);
    }
    return 0;
  }
}
