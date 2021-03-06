import 'package:flutter/material.dart';
import 'package:lojinha_alura/pages/detalhes.dart';
import 'package:lojinha_alura/paleta_cores.dart';

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
        primaryColor: PaletasCores.litas,
        textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 20,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            headline2: TextStyle(
              fontSize: 20,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            headline3: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Alata',
              color: Colors.black,
            ),
            headline4: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            headline5: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            )),
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
