import 'dart:math';
import 'package:flutter/material.dart';

const _gamma = 2.2;

/// Determines the text color for the screen with background [x].
///
/// Text color can only be black or white. The computation method is defined
/// [here](https://gamedev.stackexchange.com/a/38561).
Color computeTextColorFromBg(Color x) {
  final L = 0.2126 * pow(x.red / 255, _gamma) +
      0.7152 * pow(x.green / 255, _gamma) +
      0.0722 * pow(x.blue / 255, _gamma);
  return L > pow(0.5, _gamma) ? Colors.black : Colors.white;
}
