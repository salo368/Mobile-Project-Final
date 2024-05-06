import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CrearServicioPage extends StatelessWidget {
  const CrearServicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define el color verde para las etiquetas y el botón

    return Scaffold(
      appBar: AppBar(
        // Quiero que el app bar este con la letra de color verde y tenga un boton para devolverse

        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: const Text('Crear servicio',
            style: TextStyle(
                color: Color.fromARGB(255, 34, 161, 134),
                fontFamily: 'Nunito',
                fontSize: 27)),
        leading: IconButton(
          color: const Color.fromARGB(255, 34, 161, 134),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.toNamed("/servicePage");
          }, // Este botón permitirá regresar a la pantalla anterior
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nombre servicio',
                labelStyle: const TextStyle(
                    color: Color.fromARGB(
                        255, 34, 161, 134)), // Estilo de la etiqueta en verde
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Valor',
                labelStyle: const TextStyle(
                    color: Color.fromARGB(
                        255, 34, 161, 134)), // Estilo de la etiqueta en verde
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/newServicePPage");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 34, 161, 134),

                minimumSize: const Size(
                    double.infinity, 50), // Ancho infinito y altura de 50
              ),
              child: const Text(
                'Agregar otro servicio',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Nunito', fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
