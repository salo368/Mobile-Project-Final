// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'projects/projects_page.dart';
import 'projects/new_project_page.dart';

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
      initialRoute: '/newProjectPage',
      getPages: [
        GetPage(name: '/projectsPage', page: () => const ProjectsPage()),
        GetPage(name: '/newProjectPage', page: () => const NewProjectPage()),
      ],
    );
  }
}