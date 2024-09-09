import 'package:flutter/material.dart';
import 'package:reto1_donut_app_luis_ake/utils/my_tab.dart';

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

  List<Widget> myTabs = [
    //donut
    const MyTab(iconPath: 'lib/icons/donut.png',),
    //burger tab
    const MyTab(iconPath: 'lib/icons/burger.png',),
    //smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png',),
    //pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png',),
    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png',),
  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(icon: Icon(Icons.menu, color: Colors.grey[800], size: 36,), onPressed: () { print('boton de menu'); },),
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(right:24.0),
            child: IconButton(icon: Icon(Icons.person,color: Colors.grey[800], size: 36,), onPressed: () { print('boton de usuario'); },),
          )],
        ),
        body:  Column(children: [
          //texto I want to eat
          const Padding(
            padding: EdgeInsets.all( 24.0),
            child: Row(
              children: [
                Text('I want to ',style: TextStyle(fontSize: 32),),
                Text('EAT',style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),),
              ],
            ),
          ),
          //tap bar
          TabBar(tabs: myTabs),
          //tap bar view
          const Expanded(child: TabBarView(children: [
            //Donut
            DonutTab(),
            //Burger tab
            BurgerTab(),
            //Smoothie tab
            SmoothieTab(),
            //Pancake tab
            PancakeTab(),
            //Pizza tab
            PizzaTab(),
          ]),)
          //Carrito
        ],),
      ),
    );
  }
}