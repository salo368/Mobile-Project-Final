import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'project_stages_widget.dart';

class NewProjectPage extends StatefulWidget {
  const NewProjectPage({Key? key}) : super(key: key);

  @override
  State<NewProjectPage> createState() => _NewProjectPageState();
}

class _NewProjectPageState extends State<NewProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 255, 245),
        elevation: 2,
        title: const Text(
          "New Project",
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
            Get.toNamed("/projectsPage");
          },
        ),
      ),
      body: const StagesWidget(stage: 1),
    );
  }
}







