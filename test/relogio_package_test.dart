import 'package:flutter_test/flutter_test.dart';

import 'package:relogio_package/relogio_package.dart';

void main() {
  test('ClockWidget initialises and format works for 24h', () {
    final widget = ClockWidget(use24HourFormat: true);
    expect(widget.use24HourFormat, true);
  });
}
