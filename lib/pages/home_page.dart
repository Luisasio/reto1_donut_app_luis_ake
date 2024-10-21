import 'package:flutter/material.dart';

import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de tabs
  List<Tab> myTabs = [
    // Donut tab
    const Tab(
      icon: ImageIcon(AssetImage('lib/icons/donut.png')),
      text: 'Donuts', // Nombre del tab
    ),
    // Burger tab
    const Tab(
      icon: ImageIcon(AssetImage('lib/icons/burger.png')),
      text: 'Burgers', // Nombre del tab
    ),
    // Smoothie tab
    const Tab(
      icon: ImageIcon(AssetImage('lib/icons/smoothie.png')),
      text: 'Smoothies', // Nombre del tab
    ),
    // Pancake tab
    const Tab(
      icon: ImageIcon(AssetImage('lib/icons/pancakes.png')),
      text: 'Pancakes', // Nombre del tab
    ),
    // Pizza tab
    const Tab(
      icon: ImageIcon(AssetImage('lib/icons/pizza.png')),
      text: 'Pizzas', // Nombre del tab
),
];

  // Variables para controlar el número de items y el monto total
  int itemCount = 0;
  double totalAmount = 0.0;

  // Función para agregar productos
  void addItem(double price) {
    setState(() {
      itemCount++;
      totalAmount += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[800], size: 36),
              onPressed: () {
                print("Menu button pressed");
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.person,
                color: Colors.grey[800],
                size: 36,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text("EAT",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                ],
              ),
            ),
            TabBar(
              tabs: myTabs,
              labelColor: Colors.black,
              indicatorColor: Colors.pink,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(addItem: addItem), // Pasar función a cada Tab
                  BurgerTab(addItem: addItem),
                  SmoothieTab(addItem: addItem),
                  PancakeTab(addItem: addItem),
                  PizzaTab(addItem: addItem),
                ],
              ),
            ),
            // Mostrar número de items y monto total
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, -1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$itemCount Items | \$$totalAmount',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Delivery Charges Included',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Acción del botón View Cart
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                    ),
                    child: const Text(
                      'View Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}