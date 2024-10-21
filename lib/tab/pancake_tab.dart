import 'package:flutter/material.dart';
import 'package:reto1_donut_app_luis_ake/utils/pancake_tile.dart';

class PancakeTab extends StatelessWidget {

  final List pancakesOnSale = [
    ["Buttermilk Pancakes", "50", Colors.brown, "lib/images/pancake1.png"],
    ["Banana Pancakes", "60", Colors.yellow, "lib/images/pancake2.png"],
    ["Blueberry Pancakes", "70", Colors.red, "lib/images/pancake3.png"],
    ["ChocoChip Pancakes", "65", Colors.green, "lib/images/pancake4.png"],
    ["Buttermilk Pancakes", "50", Colors.brown, "lib/images/pancake1.png"],
    ["Banana Pancakes", "60", Colors.yellow, "lib/images/pancake2.png"],
    ["Blueberry Pancakes", "70", Colors.red, "lib/images/pancake3.png"],
    ["ChocoChip Pancakes", "65", Colors.green, "lib/images/pancake4.png"],
  ];

  final Function(double) addItem;

  PancakeTab({super.key, required this.addItem});

  @override
  Widget build(BuildContext context) {
   return GridView.builder(
    itemCount: pancakesOnSale.length, //longitud de los elementos 
    padding: const EdgeInsets.all(12),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, childAspectRatio: 1/ 1.5), //Dos columnas
    itemBuilder: (context, index) {
      return PancakeTile(
        pancakeFlavor: pancakesOnSale[index][0],
        pancakePrice: pancakesOnSale[index][1],
        pancakeColor: pancakesOnSale[index][2],
        imageName: pancakesOnSale[index][3],
        addToCart: () {
            addItem(double.parse(pancakesOnSale[index][1])); // Llama a la función addItem con el precio
          },
      );
    });
  }
}