# Example — relogio_package

Este diretório contém um exemplo mínimo de aplicativo Flutter que demonstra o uso do pacote `relogio_package`. O app exibe um widget de relógio digital que atualiza a cada segundo e permite alternar entre formato 24h e 12h (AM/PM).

## Objetivo

Mostrar, de forma simples, como integrar e usar o `ClockWidget` fornecido pelo pacote:
- Inserir o widget na árvore de widgets.
- Personalizar o estilo do texto.
- Controlar o formato de hora (24h / 12h).

## Como executar

Pré-requisitos:
- Flutter SDK (compatível com a versão usada no pacote).
- Dispositivo/emulador Android, iOS ou suporte a desktop/web configurado.

No terminal, a partir desta pasta `example/`, rode:

- Para Android:
  flutter run -d <device-id>

- Para iOS (macOS com Xcode):
  flutter run -d <device-id>

- Para web:
  flutter run -d chrome

- Para desktop (Windows/Linux/macOS):
  flutter run -d windows
  flutter run -d linux
  flutter run -d macos

Você também pode abrir o projeto no VS Code ou Android Studio e usar os comandos de execução/debug.

## O que esperar

Ao iniciar o app, a tela mostra um relógio digital centralizado. O relógio:
- Atualiza automaticamente a cada segundo.
- Pode ser configurado para exibir AM/PM ou 24 horas via parâmetro `use24HourFormat`.
- Aceita um `TextStyle` para personalização.

Exemplo de uso no código (arquivo `lib/main.dart` do exemplo):
```dart
import 'package:flutter/material.dart';
import 'package:relogio_package/relogio_package.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Exemplo relogio_package')),
        body: const Center(
          child: ClockWidget(
            use24HourFormat: false,
            // style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
```

## Desenvolvimento / Testes

- Ao desenvolver o pacote, você pode usar este exemplo apontando para a versão local do pacote no `pubspec.yaml` do example (já configurado).
- Testes de widget podem verificar o texto formatado e a atualização simulada do tempo (`WidgetTester` + `pump(Duration)`).

## Licença

O exemplo segue a mesma licença do repositório principal — veja o arquivo `../LICENSE`.

## Contribuições / Problemas

Relate problemas ou abra pull requests no repositório principal. O exemplo visa ser pequeno e didático; sugestões de melhoria são bem-vindas.