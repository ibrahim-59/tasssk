import 'package:flutter/material.dart';

class CategryModel {
  String label;
  IconData icon;
  Color color;
  Widget page;

  CategryModel(
      {required this.label,
      required this.icon,
      required this.color,
      required this.page});
}
