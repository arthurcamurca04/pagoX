import 'package:flutter/material.dart';
import 'package:pagoX/routes/rotas.dart';

class ProcurarProdutoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'O que você está procurando?',
              style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).accentColor,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Theme.of(context).accentIconTheme.color,
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                  suffixIcon: Icon(Icons.mic),
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Digite aqui...',
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.PRODUCT_DETAILS);
              },
              elevation: 8,
              child: Icon(
                Icons.arrow_forward,
                color: Theme.of(context).accentIconTheme.color,
                size: 30,
              ),
              color: Theme.of(context).accentColor,
            ),
          ],
        ),
      ),
    );
  }
}
