import 'package:flutter/material.dart';

import '1_tapshyrma.dart';

void main() {
  runApp(
    const MininTirkemem(title: 5),
  );
}

class SomeClass {}

class MininTirkemem extends StatelessWidget {
  const MininTirkemem({Key? key, required this.title}) : super(key: key);

  final int title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CounterPage(),
    );
  }
}
