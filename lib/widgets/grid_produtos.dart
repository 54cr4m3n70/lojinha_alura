import 'package:flutter/material.dart';

class GridProdutos extends StatelessWidget {
  final List moveis;
  const GridProdutos({Key? key, required this.moveis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int index) {
        final movel = moveis[index];
        return Container(
          child: Text('$movel'),
        );
      },
    );
  }
}
