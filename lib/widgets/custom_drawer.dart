import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pagoX/routes/rotas.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({this.index, this.pageController});

  final int index;
  final PageController pageController;
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  double rating = 0;
  
  _submitUser(){
  
  }

  Widget buildListTile({IconData icon, String label, Function onTap}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).accentIconTheme.color,
      ),
      title: Text(
        label,
        style: TextStyle(color: Theme.of(context).accentIconTheme.color),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      MdiIcons.accountCircleOutline,
                      size: 100,
                      color: Theme.of(context).accentIconTheme.color,
                    ),
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'perfil');
                      },
                      child: Container(
                        child: Text(
                          'Nome Completo',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      child: Text(
                        'email@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              buildListTile(
                icon: Icons.search,
                label: 'Procurar Produto',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(0);
                },
              ),
              buildListTile(
                icon: Icons.history,
                label: 'Historico de pesquisas',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(1);
                },
              ),
              buildListTile(
                icon: Icons.library_books,
                label: 'Lista de Oportunidades',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(2);
                },
              ),
              buildListTile(
                icon: Icons.business_center,
                label: 'Negociações',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(3);
                },
              ),
              buildListTile(
                icon: Icons.settings,
                label: 'Preferências',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(4);
                },
              ),
              Divider(
                height: 20,
                color: Colors.white,
              ),
              buildListTile(
                icon: Icons.help_outline,
                label: 'Ajuda',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(5);
                },
              ),
              buildListTile(
                icon: Icons.people,
                label: 'Sobre nós',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(6);
                },
              ),
              buildListTile(
                icon: MdiIcons.exitToApp,
                label: 'Sair',
                onTap: () {
                  _submitUser();
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    Routes.LOGIN,
                    ((Route route) => false),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
