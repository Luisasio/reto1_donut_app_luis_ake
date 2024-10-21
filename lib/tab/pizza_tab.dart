import 'package:flutter/material.dart';
import 'package:reto1_donut_app_luis_ake/utils/pizza_tile.dart';

class PizzaTab extends StatelessWidget {

  final List pizzasOnSale = [
    ["Margherita Pizza", "50", Colors.brown, "lib/images/pizza1.png"],
    ["Pepperoni Pizza", "60", Colors.yellow, "lib/images/pizza2.png"],
    ["Hawaiian Pizza", "70", Colors.red, "lib/images/pizza3.png"],
    ["Four Cheese Pizza", "65", Colors.green, "lib/images/pizza4.png"],
    ["Margherita Pizza", "50", Colors.brown, "lib/images/pizza1.png"],
    ["Pepperoni Pizza", "60", Colors.yellow, "lib/images/pizza2.png"],
    ["Hawaiian Pizza", "70", Colors.red, "lib/images/pizza3.png"],
    ["Four Cheese Pizza", "65", Colors.green, "lib/images/pizza4.png"],
  ];

  final Function(double) addItem;

  PizzaTab({super.key, required this.addItem});

  @override
  Widget build(BuildContext context) {
   return GridView.builder(
    itemCount: pizzasOnSale.length, //longitud de los elementos 
    padding: const EdgeInsets.all(12),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, childAspectRatio: 1/ 1.5), //Dos columnas
    itemBuilder: (context, index) {
      return PizzaTile(
        pizzaFlavor: pizzasOnSale[index][0],
        pizzaPrice: pizzasOnSale[index][1],
        pizzaColor: pizzasOnSale[index][2],
        imageName: pizzasOnSale[index][3],
         addToCart: () {
            addItem(double.parse(pizzasOnSale[index][1])); // Llama a la función addItem con el precio
          },
      );
    });
  }
}