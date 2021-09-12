import 'package:flutter/material.dart';
import 'package:lojinha_alura/pages/detalhes.dart';

import 'inicio.dart';
import 'model/movel.dart';
import 'pages/carrinho.dart';
import 'util/app_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoute.inicio,
      routes: {
        AppRoute.inicio: (context) => Inicio(),
        AppRoute.carrinho: (context) => const Carrinho(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == AppRoute.detalhes) {
          final arguments = settings.arguments as Movel;
          return MaterialPageRoute(
            builder: (context) => Detalhes(
              movel: arguments,
            ),
          );
        }
      },
    );
  }
}
