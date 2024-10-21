import 'package:flutter/material.dart';
import 'package:reto1_donut_app_luis_ake/utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {

  //list of smoothies
  final List smoothieOnSale = [
    ["Berry Smoothie", "50", Colors.brown, "lib/images/smoothie1.png"],
    ["Green Smoothie", "60", Colors.yellow, "lib/images/smoothie2.png"],
    ["Tropical Smoothie", "70", Colors.red, "lib/images/smoothie3.png"],
    ["Banana Smoothie", "65", Colors.green, "lib/images/smoothie4.png"],
    ["Berry Smoothie", "50", Colors.brown, "lib/images/smoothie1.png"],
    ["Green Smoothie", "60", Colors.yellow, "lib/images/smoothie2.png"],
    ["Tropical Smoothie", "70", Colors.red, "lib/images/smoothie3.png"],
    ["Banana Smoothie", "65", Colors.green, "lib/images/smoothie4.png"],
  ];
  
  final Function(double) addItem;

  SmoothieTab({super.key, required this.addItem});

  @override
  Widget build(BuildContext context) {
   return GridView.builder(
    itemCount: smoothieOnSale.length, //longitud de los elementos 
    padding: const EdgeInsets.all(12),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, childAspectRatio: 1/ 1.5), //Dos columnas
    itemBuilder: (context, index) {
      return SmoothieTile(
        smoothieFlavor: smoothieOnSale[index][0],
        smoothiePrice: smoothieOnSale[index][1],
        smoothieColor: smoothieOnSale[index][2],
        imageName: smoothieOnSale[index][3],
        addToCart: () {
            addItem(double.parse(smoothieOnSale[index][1])); // Llama a la función addItem con el precio
          },
      );
    });
  }
}