import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:christmas_garland/main.dart';

void main() {
  testWidgets('Testing background color change', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HomeScreen(),
      ),
    );
    final scaffold = find.byType(Scaffold);

    Color prevBgColor = _getScaffoldBg(tester, scaffold);
    Color curBgColor = await _getBgAfterTap(tester, scaffold);
    expect(prevBgColor != curBgColor, true); // compare colors after first tap

    prevBgColor = curBgColor;
    curBgColor = await _getBgAfterTap(tester, scaffold);
    expect(prevBgColor != curBgColor, true); // compare colors after second tap
  });
}

/// Returns the color of the provided [scaffold].
Color _getScaffoldBg(WidgetTester tester, Finder scaffold) {
  return (tester.firstWidget(scaffold) as Scaffold).backgroundColor;
}

/// Dispatches a tap inside the [scaffold] and returns its new background color.
Future<Color> _getBgAfterTap(WidgetTester tester, Finder scaffold) async {
  await tester.tap(scaffold);
  await tester.pump();
  return _getScaffoldBg(tester, scaffold);
}
