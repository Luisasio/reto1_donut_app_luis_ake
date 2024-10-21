import 'package:flutter/material.dart';
import 'package:reto1_donut_app_luis_ake/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {

  final List burguersOnSale = [
    ["Classic Burger", "50", Colors.brown, "lib/images/burguer1.png"],
    ["Cheese Burger", "60", Colors.yellow, "lib/images/burguer2.png"],
    ["Bacon Burger", "70", Colors.red, "lib/images/burguer3.png"],
    ["Vegan Burger", "65", Colors.green, "lib/images/burguer4.png"],
    ["Classic Burger", "50", Colors.brown, "lib/images/burguer1.png"],
    ["Cheese Burger", "60", Colors.yellow, "lib/images/burguer2.png"],
    ["Bacon Burger", "70", Colors.red, "lib/images/burguer3.png"],
    ["Vegan Burger", "65", Colors.green, "lib/images/burguer4.png"],
  ];

  final Function(double) addItem;


   BurgerTab({super.key,  required this.addItem});

  @override
  Widget build(BuildContext context) {
   return GridView.builder(
    itemCount: burguersOnSale.length, //longitud de los elementos 
    padding: const EdgeInsets.all(12),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, childAspectRatio: 1/ 1.5), //Dos columnas
    itemBuilder: (context, index) {
      return BurgerTile(
        burgerFlavor: burguersOnSale[index][0],
        burgerPrice: burguersOnSale[index][1],
        burgerColor: burguersOnSale[index][2],
        imageName: burguersOnSale[index][3],
        addToCart: () {
            addItem(double.parse(burguersOnSale[index][1])); // Llama a la función addItem con el precio
          }
      );
    });
  }
}