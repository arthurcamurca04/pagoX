import 'package:flutter/material.dart';

class DetelhesProdutoScreen extends StatefulWidget {
  @override
  _DetelhesProdutoScreenState createState() => _DetelhesProdutoScreenState();
}

class _DetelhesProdutoScreenState extends State<DetelhesProdutoScreen> {
  double _price = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pago X')),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Text(
              'Detalhes sobre a pesquisa',
              style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Preço',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Sugestão: R\$ 14,99',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black45,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "R\$: " + _price.toStringAsFixed(2),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Slider(
              min: 0.0,
              max: 100.0,
              label: _price.toStringAsFixed(2),
              value: _price,
              divisions: 40,
              onChanged: (double value) {
                setState(() {
                  _price = value;
                  print(_price);
                });
              },
            ),
            SizedBox(
              height: 24,
            ),
            Align(
              alignment: Alignment.center,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 16,
                ),
                onPressed: () {},
                color: Theme.of(context).accentColor,
                child: Text(
                  'PROCURAR VENDEDORES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
