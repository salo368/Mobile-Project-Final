// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'projects/projects_page.dart';
import 'projects/service_page.dart';
import 'projects/new_project_page.dart';
import 'projects/new_service_page.dart';
import 'projects/new_servicep_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/projectsPage',
      getPages: [
        GetPage(name: '/projectsPage', page: () => const ProjectsPage()),
        GetPage(name: '/servicePage', page: () => const ServicePage()),
        GetPage(name: '/newProjectPage', page: () => const NewProjectPage()),
        GetPage(name: '/newServicePage', page: () => const CrearServicioPage()),
        GetPage(name: '/newServicePPage', page: () => const NewServiceP()),
      ],
    );
  }
}
