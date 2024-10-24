import 'package:flutter/material.dart';
import 'package:reto1_donut_app_luis_ake/pages/home_page.dart';
import 'package:reto1_donut_app_luis_ake/pages/login_page.dart';
import 'login_page.dart';  // Importa la página de login

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),  // Cambia para mostrar primero la página de login
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(indicatorColor: Color.fromARGB(255, 255, 46, 46)),
      ),
    );
  }
}
