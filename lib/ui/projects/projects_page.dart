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
            fontSize: 25, // Cambia el tamaño del texto del título
          ),
        ),
        toolbarHeight: 50,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5, left: 10.0, right: 10.0),
              child: SizedBox(
                width: double.infinity,
                height: 36.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Ajusta este valor según sea necesario
                    color: Colors.grey[300],
                  ),
                  child: const TextField(
                    style: TextStyle(fontSize: 17.0),
                    cursorColor: Color.fromARGB(255, 49, 49, 49),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent, // Establece el color de relleno del TextField como transparente
                      border: InputBorder.none,
                      hintText: 'Search',
                      contentPadding: EdgeInsets.only(bottom: 11.5, left: 20.0, right: 8.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  // Función que se ejecuta al presionar el botón
                },
                child: const Text('Botón'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ListView(
                  children: <Widget>[
                    for (int i = 0; i < 20; i++)
                      ListTile(
                        title: Text('Elemento $i'),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(barState:0),
    );
  }
}


