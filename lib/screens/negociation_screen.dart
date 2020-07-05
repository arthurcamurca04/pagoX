import 'package:flutter/material.dart';

class NegocitationScreen extends StatelessWidget {
  final GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget cardNegociacao(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('ID #5424',
                  style: TextStyle(
                    color: Colors.black45,
                  )),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('Comprador',
                      style: TextStyle(
                        fontSize: 14,
                      )),
                  Text('Ricardo Smith',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Preço',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                  Text('R\$ 20,58',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('Estabelecimento',
                      style: TextStyle(
                        fontSize: 14,
                      )),
                  Text('Art Pizza',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.star),
                      Text('4.6',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                          )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on),
                      Text('3 km de distância',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                color: Theme.of(context).primaryColor,
                tooltip: 'LIGAR',
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                ),
              ),
              IconButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                tooltip: 'CHAT',
                icon: Icon(
                  Icons.chat,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('PagoX'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 45,
            color: Colors.white,
            child: Text(
              'Negociações',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          Container(
            height: size.height * 0.45,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Scaffold(
              body: Container(
                child: Card(
                  elevation: 5,
                  child: cardNegociacao(context),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                'FINALIZAR NEGOCIAÇÃO',
                style: TextStyle(
                  color: Theme.of(context).accentTextTheme.button.color
                ),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            width: double.infinity,
            child: RaisedButton(
              child: Text('RELATAR PROBLEMA OU ABUSO'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
