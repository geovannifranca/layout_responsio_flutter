import 'package:flutter/material.dart';
import 'package:layout_responsivo/widgets/reponsive_sidebar.dart';
import 'package:layout_responsivo/widgets/header.dart';
import 'package:layout_responsivo/widgets/sidebar_tile.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({super.key});

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final sideBarWidth = (size.width * 0.3).clamp(96.0, 400.0);
    return Scaffold(
      body: Row(
        children: [
          ResponsiveSideBar(
            heght: double.infinity,
            width: sideBarWidth,
            child: Column(
              children: [
                Header(
                  width: double.infinity,
                  isVisible: size.width > 460,
                ),
                const SizedBox(height: 24),
                const Divider(),
                const SizedBox(height: 20),
                SideBarTile(
                  title: 'Início',
                  icon: Icons.home,
                  color: Colors.lightBlue,
                  isVisible: size.width > 460,
                ),
                SideBarTile(
                  title: 'Perfil',
                  icon: Icons.person,
                  color: Colors.blueGrey,
                  isVisible: size.width > 460,
                ),
                SideBarTile(
                  title: 'Configurações',
                  icon: Icons.settings,
                  color: Colors.blueGrey,
                  isVisible: size.width > 460,
                ),
                SideBarTile(
                  title: 'Sair',
                  icon: Icons.exit_to_app,
                  color: Colors.blueGrey,
                  isVisible: size.width > 460,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  const Text(
                    'Conteúdo',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: size.width <= 1047.0 ? 2 : 4,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0),
                        itemCount: 20,
                        itemBuilder: (context, index) => Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(16.0),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://www.aerku.com/wp-content/uploads/2019/02/placeholder-image-1000x1000.png'),
                                ),
                              ),
                            )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
