import 'package:flutter/material.dart';
import 'package:pagoX/routes/rotas.dart';


class LoginScreen extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  
  _submitUser(){}   
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: size.width * 0.5,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/pagox_logo_normal.png'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Faça seu login',
                  style: TextStyle(
                    fontSize: 25,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _passController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              SizedBox(height: 10),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                onPressed: () {
                  _submitUser();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.HOME,
                    ((Route route) => false),
                  );
                },
                color: Theme.of(context).primaryColor,
                child: Container(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).accentTextTheme.button.color,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Esqueci minha senha',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.ADD_USER);
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Quero criar uma conta',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
