import 'package:flutter/material.dart';

class StagesWidget extends StatelessWidget {
  
  final int stage;
  const StagesWidget({
    Key? key,
    required this.stage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildCircleContainer(stage >= 1 ? const Color(0xFF0CA06C) : const Color.fromARGB(255, 191, 243, 187)),
          _buildDivider(color: stage >= 2 ? const Color(0xFF0CA06C) : const Color.fromARGB(255, 191, 243, 187)),
          _buildCircleContainer(stage >= 2 ? const Color(0xFF0CA06C) : const Color.fromARGB(255, 191, 243, 187)),
          _buildDivider(color: stage >= 3 ? const Color(0xFF0CA06C) : const Color.fromARGB(255, 191, 243, 187)),
          _buildCircleContainer(stage >= 3 ? const Color(0xFF0CA06C) : const Color.fromARGB(255, 191, 243, 187)),
          _buildDivider(color: stage >= 4 ? const Color(0xFF0CA06C) : const Color.fromARGB(255, 191, 243, 187)),
          _buildCircleContainer(stage >= 4 ? const Color(0xFF0CA06C) : const Color.fromARGB(255, 191, 243, 187)),
        ],
      ),
    );
  }

  Widget _buildCircleContainer(Color color) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }

  Widget _buildDivider({required Color color}) {
  return Container(
    width: 56, // Ancho igual a la mitad del círculo
    height: 2, // Altura pequeña para la línea horizontal
    color: color , // Si no se proporciona un color, usa Colors.black como valor predeterminado
  );
}
}
