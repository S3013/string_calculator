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

    test('Newline as delimiter should work', () {
      expect(StringCalculator.add("1\n2,3"), 6);
    });

    test('Custom delimiter should be supported', () {
      expect(StringCalculator.add("//;\n1;2"), 3);
    });

    test("Custom Multi-character delimiters ", (){
      expect(StringCalculator.add('//[***]\n1***2***3'), 6);
    });

  });
}



