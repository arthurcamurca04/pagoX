import 'package:flutter/material.dart';
import 'package:pagoX/routes/rotas.dart';

class MatchScreen extends StatelessWidget {
  final GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget cardNegociacao(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,

                  children: <Widget>[
                    Text('Estabelecimento',
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    Text('Arte da Pizza',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.star),
                    Text(
                      '4.6',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                      ],
                    ),
    
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on),
                    Text(
                      '3 km',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            alignment: Alignment.centerRight,
            width: double.infinity,
            child: RaisedButton(
              elevation: 5,
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.NEGOCIATION);
              },
              color: Colors.green,
              child: Text(
                'QUERO NEGOCIAR',
                style: TextStyle(color: Colors.white),
              ),
            ),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 24),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 45,
            child: Text(
              'Deu match!',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Text('Encontramos 2 estabelecimentos'),
          ),
          SizedBox(height: 10),
          Container(
            height: size.height * 0.7,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: DefaultTabController(
              length: 2,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 5,
                    child: cardNegociacao(context),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
