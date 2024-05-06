import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewProjectPage extends StatefulWidget {
  const NewProjectPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NewProjectPageState createState() => _NewProjectPageState();
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
        title: const Text('Nuevo proyecto'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Nombre Proyecto'),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Introduce el nombre del proyecto',
              ),
            ),
            const SizedBox(height: 20),
            const Text('Nombre Empresa'),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Introduce el nombre de la empresa',
              ),
            ),
            const SizedBox(height: 20),
            const Text('Descripción'),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Descripción de piezas para redes sociales',
              ),
            ),
            const SizedBox(height: 20),
            const Text('Fecha inicio'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(DateFormat('dd/MM/yyyy').format(startDate)),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () => _selectDate(context, true),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Fecha Final'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(DateFormat('dd/MM/yyyy').format(endDate)),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () => _selectDate(context, false),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ), // Aquí se manejaría el evento para omitir
                  child: const Text('Omitir'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ), // Aquí se manejaría el evento para continuar
                  child: const Text('Continuar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
