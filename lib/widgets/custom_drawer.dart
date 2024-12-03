import 'package:flutter/material.dart';
import 'package:layout_responsivo/widgets/header.dart';
import 'package:layout_responsivo/widgets/sidebar_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          Header(
            width: double.infinity,
          ),
          SizedBox(height: 24),
          Divider(),
          SizedBox(height: 20),
          SideBarTile(
            title: 'Início',
            icon: Icons.home,
            color: Colors.lightBlue,
          ),
          SideBarTile(
            title: 'Perfil',
            icon: Icons.person,
            color: Colors.blueGrey,
          ),
          SideBarTile(
            title: 'Configurações',
            icon: Icons.settings,
            color: Colors.blueGrey,
          ),
          SideBarTile(
            title: 'Sair',
            icon: Icons.exit_to_app,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
