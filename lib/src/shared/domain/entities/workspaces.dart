import 'package:flutter/material.dart';

enum Workspaces {
  savva,
  olluco,
  loona,
  folk,
  whiteRabbit,
  sage,
  maya,
  jun,
  onest,
  probkaOnColored;

  String toText() {
    switch (this) {
      case savva:
        return "Savva";
      case olluco:
        return "Olluco";
      case loona:
        return "Loona";
      case folk:
        return "Folk";
      case whiteRabbit:
        return "White Rabbit";
      case sage:
        return "Sage";
      case maya:
        return "Maya";
      case jun:
        return "Jun";
      case onest:
        return "Onest";
      case probkaOnColored:
        return "Probka на Цветном";
    }
  }

  Color toColor() {
    switch (this) {
      case savva:
        return Colors.red;
      case olluco:
        return Colors.pink;
      case loona:
        return Colors.purpleAccent;
      case folk:
        return Colors.blue;
      case whiteRabbit:
        return Colors.blueGrey;
      case sage:
        return Colors.green;
      case maya:
        return Colors.yellow;
      case jun:
        return Colors.orange;
      case onest:
        return Colors.purple;
      case probkaOnColored:
        return Colors.blueAccent;
    }
  }
}
