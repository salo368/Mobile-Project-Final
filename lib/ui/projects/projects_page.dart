import 'package:flutter/material.dart';
import '../bottomBar/bottom_bar.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 228, 255, 245), // Cambia el color del fondo del AppBar a rojo
        elevation: 2,
        title: const Text(
          "My projects",
          style: TextStyle(
            color: Color(0xFF0CA06C),
            fontFamily: 'Roboto', // Cambia la fuente del texto del título
            fontSize: 22, // Cambia el tamaño del texto del título
          ),
        ),
        toolbarHeight: 50,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(), // Deshabilita el scroll del ListView
                shrinkWrap: true, // Permite que el ListView tome el tamaño de su contenido
                itemCount: 20, // Ejemplo de 10 proyectos
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Proyecto ${index + 1}'),
                    onTap: () {
                      // Acción al seleccionar un proyecto
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(barState:0),
    );
  }
}


