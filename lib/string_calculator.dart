import 'dart:developer';

import 'package:flutter/foundation.dart';

class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',|\n';
    if (numbers.startsWith("//")) {
      var parts = numbers.split("\n");
      delimiter = RegExp(parts[0].substring(2)).pattern;
      numbers = parts[1];
    }

    List<int> numList = numbers
        .split(RegExp(delimiter))
        .map((num) => int.tryParse(num) ?? 0)
        .toList();

    List<int> negatives = numList.where((num) => num < 0).toList();

    if (negatives.isNotEmpty) {

      throw Exception("Negative numbers not allowed: ${negatives.join(", ")}");
    }

    return numList.reduce((a, b) => a + b);


  }
}