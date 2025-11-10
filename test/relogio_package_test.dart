import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:relogio_package/relogio_package.dart';

void main() {
  /// Testa se o ClockWidget inicializa corretamente com formato 24h.
  test('ClockWidget initialises and format works for 24h', () {
    final widget = ClockWidget(use24HourFormat: true);
    expect(widget.use24HourFormat, true);
  });

  /// Testa se o ClockWidget inicializa corretamente com formato 12h.
  test('ClockWidget initialises and format works for 12h', () {
    final widget = ClockWidget(use24HourFormat: false);
    expect(widget.use24HourFormat, false);
  });

  /// Testa se o ClockWidget exibe o horário em formato 24h.
  /// Verifica se o texto contém ":" (indicativo de hora).
  testWidgets('ClockWidget displays time in 24h format', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ClockWidget(use24HourFormat: true),
    ));
    expect(find.byType(Text), findsOneWidget);
    final textWidget = tester.widget<Text>(find.byType(Text));
    expect(textWidget.data, isNotNull);
    expect(textWidget.data!.contains(':'), isTrue);
  });

  /// Testa se o ClockWidget exibe o horário em formato 12h com AM/PM.
  /// Verifica se o texto contém "AM" ou "PM".
  testWidgets('ClockWidget displays time in 12h format with AM/PM', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ClockWidget(use24HourFormat: false),
    ));
    await tester.pump(const Duration(seconds: 1));
    final textWidget = tester.widget<Text>(find.byType(Text));
    expect(textWidget.data, isNotNull);
    expect(
      textWidget.data!.contains('AM') || textWidget.data!.contains('PM'),
      isTrue,
    );
  });

  /// Testa se o ClockWidget aplica corretamente um TextStyle customizado.
  testWidgets('ClockWidget applies custom TextStyle', (WidgetTester tester) async {
    const style = TextStyle(fontSize: 42, color: Colors.red);
    await tester.pumpWidget(const MaterialApp(
      home: ClockWidget(style: style),
    ));
    final textWidget = tester.widget<Text>(find.byType(Text));
    expect(textWidget.style?.fontSize, 42);
    expect(textWidget.style?.color, Colors.red);
  });
}
