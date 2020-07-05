import 'package:flutter/material.dart';

import 'routes/rotas.dart';
import 'screens/match_screen.dart';
import 'screens/negociation_screen.dart';
import 'widgets/wrapper.dart';
import 'screens/home_screen.dart';
import 'screens/cadastrar_conta.dart';
import 'screens/detalhes_produto_screen.dart';
import 'screens/login.dart';
import 'screens/tutorial/sliding_tutorial.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pago X',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(elevation: 0),
        scaffoldBackgroundColor: Colors.grey[50],
        primarySwatch: Colors.green,
        primaryColor: Colors.green[700],
      ),
      home: Wrapper(),      
      routes: {
        Routes.HOME: (_) => HomeScreen(),
        Routes.ADD_USER: (_) => CadastrarContaScreen(),
        Routes.LOGIN: (_) => LoginScreen(),
        Routes.PRODUCT_DETAILS : (_) => DetelhesProdutoScreen(),
        Routes.TUTORIAL: (_) => TutorialPage(),
        Routes.MATCH: (_) => MatchScreen(),
        Routes.NEGOCIATION: (_) => NegocitationScreen(),
      },
    );
  }
}
