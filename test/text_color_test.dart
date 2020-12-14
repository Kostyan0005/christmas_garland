import 'package:flutter/material.dart';
import 'package:test/test.dart';
import 'package:christmas_garland/utils/compute_text_color.dart';

void main() {
  group('Testing computation of text color from background color', () {
    test('Text color for white background should be black', () {
      expect(computeTextColorFromBg(Colors.white), Colors.black);
    });
    test('Text color for black background should be white', () {
      expect(computeTextColorFromBg(Colors.black), Colors.white);
    });
    test('Text color for brown background should be white', () {
      expect(computeTextColorFromBg(Colors.brown), Colors.white);
    });
    test('Text color for lightBlue background should be black', () {
      expect(computeTextColorFromBg(Colors.lightBlue), Colors.black);
    });
  });
}
