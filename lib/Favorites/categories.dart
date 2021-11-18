import 'dart:ui';
import 'package:flutter/cupertino.dart';

class category {
  String name;
  Icon icon;
  Color color;
  String imgName;

  List<category> subcategories;


  category(
  {
  required this.name,
  required this.icon,
  required this.color,
  required this.imgName,
  required this.subcategories
}
      );
}