import 'package:flutter/material.dart';
import 'package:layout_responsivo/widgets/custom_drawer.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomDrawer(),
      body: Expanded(
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
                        crossAxisCount: size.width <= 480.0 ? 1 : 2,
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
    );
  }
}
