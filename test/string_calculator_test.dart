import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('String Calculator', () {
    test('Empty string should return 0', () {
      expect(StringCalculator.add(""), equals(0));
    });

    test('Single number should return the number itself', () {
      expect(StringCalculator.add("1"), 1);
    });

    test('Two numbers separated by comma should return their sum', () {
      expect(StringCalculator.add("1,5"), 6);
    });

    test('Multiple numbers should return their sum', () {
      expect(StringCalculator.add("1,2,3,4"), 10);
    });



  });
}



