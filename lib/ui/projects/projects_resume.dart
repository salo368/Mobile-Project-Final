import 'package:flutter/material.dart';

class ProjectResume extends StatefulWidget {
  const ProjectResume({Key? key}) : super(key: key);

  @override
  State<ProjectResume> createState() => _ProjectResumeState();
}

class _ProjectResumeState extends State<ProjectResume> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5), // Padding vertical de 10px
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), // Bordes redondos
          border: Border.all(width: 2, color: const Color.fromARGB(255, 109, 166, 145)), // Borde de 2px
          color: const Color.fromARGB(255, 233, 236, 227),
        ),
        child: Row(
          children: [
           Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 17, 102, 79), // Color de ejemplo
                  borderRadius: BorderRadius.circular(23.0), // Radio de las esquinas
                ),
              ),
            ),
            Expanded(
              child: Container(
                 // Color de ejemplo
              ),
            ),
          ],
        ),
      ),
    );
  }
}
