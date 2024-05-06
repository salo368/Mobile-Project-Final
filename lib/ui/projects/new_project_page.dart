import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'project_stages_widget.dart';

class NewProjectPage extends StatefulWidget {
  const NewProjectPage({Key? key}) : super(key: key);

  @override
  State<NewProjectPage> createState() => _NewProjectPageState();
}

class _NewProjectPageState extends State<NewProjectPage> {
  
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();

  Future<void> _selectDate(BuildContext context, bool isStart) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStart ? startDate : endDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith( // Puedes ajustar el tema aquí
            colorScheme: const ColorScheme.light(
              primary: Color(0xFF0CA06C), // Cambia el color primario a rojo
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          startDate = picked;
        } else {
          endDate = picked;
        }
      });
    }
  }

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StagesWidget(stage: 1),
            const Padding(
              padding: EdgeInsets.only(top:0, bottom: 0, left: 18.0, right: 18.0),
              child:Text("Project name",
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Color(0xFF0CA06C)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:0, bottom: 10, left: 15.0, right: 15.0),
            child: SizedBox(
              width: double.infinity,
              height: 36.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // Ajusta este valor según sea necesario
                  color: Colors.grey[300],
                ),
                child: const TextField(
                  style: TextStyle(fontSize: 16.0),
                  cursorColor: Color.fromARGB(255, 49, 49, 49),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent, // Establece el color de relleno del TextField como transparente
                    border: InputBorder.none,
                    
                    contentPadding: EdgeInsets.only(bottom: 12, left: 8.0, right: 8.0),
                    
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:0, bottom: 0, left: 18.0, right: 18.0),
            child:Text("Company name",
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Color(0xFF0CA06C)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:0, bottom: 10, left: 15.0, right: 15.0),
            child: SizedBox(
              width: double.infinity,
              height: 36.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // Ajusta este valor según sea necesario
                  color: Colors.grey[300],
                ),
                child: const TextField(
                  style: TextStyle(fontSize: 16.0),
                  cursorColor: Color.fromARGB(255, 49, 49, 49),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent, // Establece el color de relleno del TextField como transparente
                    border: InputBorder.none,
                    
                    contentPadding: EdgeInsets.only(bottom: 12, left: 8.0, right: 8.0),
                    
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:0, bottom: 0, left: 18.0, right: 18.0),
            child:Text("Project description",
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Color(0xFF0CA06C)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0, left: 15.0, right: 15.0),
            child: SizedBox(
              width: double.infinity,
              height: 110.0, // 4 líneas multiplicadas por la altura de una línea
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
                child: const TextField(
                  style: TextStyle(fontSize: 16.0),
                  cursorColor: Color.fromARGB(255, 49, 49, 49),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 0, left: 8.0, right: 8.0,top: 4),
                  ),
                  maxLines: 4, 
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:10, bottom: 0, left: 18.0, right: 18.0),
            child:Text("Start date",
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Color(0xFF0CA06C)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0, left: 18.0, right: 18.0),
            child: SizedBox(
              height: 40.0,
              child: ElevatedButton(
                onPressed: () => _selectDate(context, false),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0CA06C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // Aquí se agrega el color negro para el texto del botón
                  foregroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      DateFormat('dd/MM/yyyy').format(endDate),
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    const Icon(Icons.calendar_today),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:10, bottom: 0, left: 18.0, right: 18.0),
            child:Text("End date",
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Color(0xFF0CA06C)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0, left: 18.0, right: 18.0),
            child: SizedBox(
              height: 40.0,
              child: ElevatedButton(
                onPressed: () => _selectDate(context, false),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0CA06C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // Aquí se agrega el color negro para el texto del botón
                  foregroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      DateFormat('dd/MM/yyyy').format(endDate),
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    const Icon(Icons.calendar_month),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    bottomNavigationBar: ClipRRect(
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
            color: Colors.transparent, // Cambiado a transparente
            border: Border.all(
              color: const Color.fromARGB(255, 12, 160, 108), // Borde verde
              width: 2, // Ancho de borde 2px
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
                    color: Color.fromARGB(255, 12, 160, 108), // Letras de color verde
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
                        color: const Color.fromARGB(255, 167, 232, 209)
                            ,
                      ),
                      child: const Center(
                        child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Aceptar",
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
          ],
        ),
      ),
    ),
  );
 }
}




