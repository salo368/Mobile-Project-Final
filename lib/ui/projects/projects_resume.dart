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
            const Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(5, 10, 20, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UI/UX Design",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Espacio entre el título y el subtítulo
                    Text(
                      "En Proceso",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    // Espacio entre el subtítulo y la fecha
                    Text(
                      "02/05/2024",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    // Espacio entre la fecha y la barra de carga
                    LinearProgressIndicator(
                      value: 0.6, // Valor de la barra de carga (0.0 - 1.0)
                      backgroundColor: Colors.grey,
                      minHeight: 6,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "60% Completado",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
