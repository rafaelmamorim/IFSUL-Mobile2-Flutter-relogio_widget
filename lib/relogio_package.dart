library relogio_package;

import 'package:flutter/widgets.dart';
import 'dart:async';

/// Um widget Flutter que exibe um relógio digital ao vivo, atualizando a cada segundo.
///
/// O [ClockWidget] pode ser exibido em formato 24h ou 12h (AM/PM) e permite
/// personalização do estilo do texto.
///
/// Exemplo de uso:
/// ```dart
/// ClockWidget(
///   use24HourFormat: false,
///   style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
/// )
/// ```
///
/// Consulte o README do pacote para mais detalhes e exemplos.
class ClockWidget extends StatefulWidget {
  /// Estilo opcional de texto para o relógio.
  final TextStyle? style;

  /// Se `true`, exibe o relógio em formato 24h.
  /// Se `false`, exibe em formato 12h com AM/PM.
  /// Padrão: `true`.
  final bool use24HourFormat;

  const ClockWidget({super.key, this.style, this.use24HourFormat = true});

  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  late Timer _timer;
  late DateTime _now;

  @override
  void initState() {
    super.initState();
    _now = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _now = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _formatTime(DateTime dt) {
    if (widget.use24HourFormat) {
      return "${_twoDigits(dt.hour)}:${_twoDigits(dt.minute)}:${_twoDigits(dt.second)}";
    } else {
      final hour12 = dt.hour % 12 == 0 ? 12 : dt.hour % 12;
      final ampm = dt.hour < 12 ? "AM" : "PM";
      return "${_twoDigits(hour12)}:${_twoDigits(dt.minute)}:${_twoDigits(dt.second)} $ampm";
    }
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final display = _formatTime(_now);
    return Text(display, style: widget.style ?? const TextStyle(fontSize: 24));
  }
}
