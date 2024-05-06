import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'projects_resume.dart';
import 'project_next_bar.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 255, 245),
        elevation: 2,
        title: const Text(
          "Services",
          style: TextStyle(
            color: Color(0xFF0CA06C),
            fontFamily: 'Roboto',
            fontSize: 22,
          ),
        ),
        toolbarHeight: 46,
        titleSpacing: -7, // Ajusta el margen izquierdo del título
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.toNamed("/newProjectPage");
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15.0, right: 15.0),
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
                      contentPadding: EdgeInsets.only(bottom: 11.5, left: 0, right: 8.0),
                      prefixIcon: Icon(Icons.search, color: Color.fromARGB(255, 92, 92, 92)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 15.0, right: 15.0),
              child: SizedBox(
                height: 36.0,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed("/newServicePage");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF0CA06C)),
                        ),
                        child: const Text(
                          'New service +',
                          style: TextStyle(fontSize: 17.0,color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: ListView(
                  children: <Widget>[
                    for (int i = 0; i < 3; i++)
                      const ProjectResume(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ProjectNextBar(route: "/newServicePPage",),
    );
  }
}


