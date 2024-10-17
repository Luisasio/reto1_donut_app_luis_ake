import 'package:flutter/material.dart';
import 'package:reto1_donut_app_luis_ake/pages/home_page.dart';


void main() {
  runApp(const MainApp());
  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(tabBarTheme: const TabBarTheme(indicatorColor: Color.fromARGB(255, 255, 46, 46))),
    );
  }
}
