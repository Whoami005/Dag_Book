import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  final List<String> test1 = const[
    'dsf', '4', '5', 'dsu', 'dsu'
  ];

  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> test =
      test1.map((text) => WidgerExample(text: text)).toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: test,
    );
  }
}



class WidgerExample extends StatelessWidget {
  final String text;
  const WidgerExample({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    );
  }
}
