# relogio_package

Um pacote Flutter que fornece um widget simples de relógio digital ao vivo. O widget atualiza a cada segundo e pode ser exibido em formato 24h ou 12h (com AM/PM). Ideal para aplicações que precisam mostrar a hora local em tempo real de forma fácil e leve.

## Recursos

- Relógio digital que atualiza a cada segundo.
- Suporte a formato 24h ou 12h (AM/PM).
- Permite customizar estilo de texto via `TextStyle`.

## Começando

Pré-requisitos:
- Flutter instalado.
- Projeto Flutter existente.

Adicionar ao `pubspec.yaml` (quando publicado no pub.dev):
```yaml
dependencies:
  relogio_package: ^0.0.1
```

Ou referenciar localmente enquanto desenvolve.

## Uso

Importe o pacote e use o ClockWidget em sua árvore de widgets:

```dart
import 'package:flutter/material.dart';
import 'package:relogio_package/relogio_package.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemplo de Relógio')),
      body: Center(
        child: ClockWidget(
          use24HourFormat: false,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
```
## Parâmetros principais:

- style (TextStyle?) — estilo opcional do texto exibido.
- use24HourFormat (bool) — se true usa formato 24h; se false usa formato 12h com AM/PM. Padrão: true.

## Exemplo completo
Veja a pasta example/ do pacote para um exemplo completo de uso em um app Flutter.

## Testes
Adicionar testes unitários/widget conforme necessário. O widget é simples e pode ser testado verificando a presença do texto formatado e sua atualização simulada.

## Contribuindo
Contribuições são bem-vindas. Abra issues ou pull requests com melhorias, correções ou novos recursos.

## Licença
Veja o arquivo LICENSE.md

Contato
Abra issues no repositório do projeto para reportar problemas ou sugerir melhorias. 