import 'package:flutter/material.dart';
import 'package:midterm_project_3rdyear_1stsem/Favorites/categories.dart';


class utils{
  static List<category> getMockCategory(){
    return [
      category(
          color: Colors.white,
          name: "Fish Steaks With Veggie Sauce",
          imgName: "fish",
          icon: const Icon(Icons.favorite_border_outlined, color: Colors.white),
          subcategories:[],
      ),
      category(
        color: Colors.white,
        name: "Choco Lamb Veggies",
        imgName: "choco",
        icon: const Icon(Icons.favorite_border_outlined, color: Colors.white),
        subcategories:[],
      ),
      category(
        color: Colors.white,
        name: "Mutton Kebab Nuggets",
        imgName: "kebab",
        icon: const Icon(Icons.favorite_border_outlined, color: Colors.white),
        subcategories:[],
      ),
      category(
        color: Colors.white,
        name: "Chicken Leg Piece",
        imgName: "chicken",
        icon: const Icon(Icons.favorite_border_outlined, color: Colors.white),
        subcategories:[],
      ),
      category(
        color: Colors.white,
        name: "Fruit Vegige Mix with Meat",
        imgName: "meat",
        icon: const Icon(Icons.favorite_border_outlined, color: Colors.white),
        subcategories:[],
      ),


    ];
  }
}
