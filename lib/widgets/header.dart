import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double width;
  final bool isVisible;
  const Header({
    super.key,
    required this.width,
    this.isVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      width: width,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: const [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.blue.shade800,
              Colors.blue.shade700,
              Colors.blue.shade600,
              Colors.blue.shade400,
            ],
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 38,
            child: Icon(
              Icons.person,
              size: 34,
            ),
          ),
          Visibility(
            visible: isVisible,
            child: const SizedBox(height: 20.0),
          ),
          Visibility(
            visible: isVisible,
            child: const Text(
              'Nome do usuário',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Visibility(
            visible: isVisible,
            child: const SizedBox(height: 4.0),
          ),
          Visibility(
            visible: isVisible,
            child: Visibility(
              visible: isVisible,
              child: Text(
                'exemplo@gmail.com',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.w100,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
