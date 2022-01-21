import 'package:flutter/material.dart';

class Task {
  static int _unnamedCount = 1;
  String name;
  Task({required this.name}) {
    if (name == "") {
      name = "Unnamed Task " + (_unnamedCount++).toString();
    }
  }
}
