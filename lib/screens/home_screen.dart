import 'package:flutter/material.dart';
import 'package:pagoX/screens/negociacoes_screen.dart';
import 'package:pagoX/stores/home_store.dart';
import 'package:pagoX/widgets/custom_drawer.dart';

import 'procurar_produto_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final HomeStore controller = HomeStore();

  void onPageChanged(int page) {
    controller.currentIndex = page;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PagoX'),
        centerTitle: true,
      ),
      drawer: DrawerMenu(
        pageController: _pageController,
        index: _currentIndex,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          ProcurarProdutoScreen(),
          Center(
            child: Text(
              'Pagina 2',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'Pagina 3',
              style: TextStyle(fontSize: 50),
            ),
          ),
          NegociacaoScreen(),
          Center(
            child: Text(
              'Pagina 5',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'Pagina 6',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'Pagina 7',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'Pagina 8',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
        controller: _pageController,
        onPageChanged: onPageChanged,
      ),
    );
  }
}
