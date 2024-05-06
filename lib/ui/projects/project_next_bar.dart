import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectNextBar extends StatefulWidget {
  
  final String route;
  const ProjectNextBar({Key? key,required this.route}) : super(key: key);

  @override
  State<ProjectNextBar> createState() => _ProjectNextBarState();
}

class _ProjectNextBarState extends State<ProjectNextBar> {
  late String route; // Cambiado para ser inicializado en el initState

  @override
  void initState() {
    super.initState();
    route = widget.route;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        color: Colors.white, // Cambia el color de fondo según sea necesario
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 9, bottom: 12, left: 18.0, right: 9.0),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent, 
                        border: Border.all(
                          color: const Color.fromARGB(255, 12, 160, 108), 
                          width: 2, 
                        ),
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Omitir",
                              style: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(255, 12, 160, 108), 
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(route);
                },
                child: Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 9, bottom: 12, left: 9.0, right: 18.0),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 10, 136, 92),
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Aceptar",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}