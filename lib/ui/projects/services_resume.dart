import 'package:flutter/material.dart';

class ServiceResume extends StatefulWidget {
  const ServiceResume({Key? key}) : super(key: key);

  @override
  State<ServiceResume> createState() => _ServiceResumeState();
}

class _ServiceResumeState extends State<ServiceResume> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5), // Padding vertical de 10px
      child: Stack(
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), // Bordes redondos
              border: Border.all(width: 2, color: const Color.fromARGB(255, 109, 166, 145)), // Borde de 2px
              color: const Color.fromARGB(255, 233, 236, 227),
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 5, 20, 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Branding design",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "\$ 2.000.000",
                          style: TextStyle(
                            color: Color(0xFF0CA06C),
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "Logo  Market  Positioning",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 9,
            right: 9,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SizedBox(
                width: 60,
                height: 35,
                child: FloatingActionButton(
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  elevation: 0, // Quita la sombra
                  backgroundColor: const Color(0xFF0CA06C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Esquina redonda de 10px
                  ),
                  child: const Text(
                    "add",
                    style: TextStyle(
                      color:Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

