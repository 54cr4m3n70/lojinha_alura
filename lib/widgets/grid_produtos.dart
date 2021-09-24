import 'package:flutter/material.dart';

import '/model/movel.dart';
import '/widgets/elemento_grid_produtos.dart';

class GridProdutos extends StatelessWidget {
  final List moveis;
  final Function atualiza;
  const GridProdutos({Key? key, required this.moveis, required this.atualiza})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int index) {
        final movel = Movel.fromJson(moveis[index]);
        return ElementoGridProdutos(
          atualiza: atualiza,
          movel: movel,
        );
      },
    );
  }
}
