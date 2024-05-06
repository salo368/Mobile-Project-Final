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
      child: Container(
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
                      "Logo",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "2.000.000\$",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "02/05/2024",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
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
    );
  }
}
