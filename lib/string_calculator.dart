import 'dart:developer';

import 'package:flutter/foundation.dart';

class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;



    List<int> numList = numbers
        .split(',')
        .map((num) => int.tryParse(num) ?? 0)
        .toList();

    return numList.reduce((a, b) => a + b);


  }
}