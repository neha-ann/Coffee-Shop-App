// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CountControllerExample extends StatefulWidget {
  const CountControllerExample({super.key});

  @override
  _CountControllerExampleState createState() => _CountControllerExampleState();
}

class _CountControllerExampleState extends State<CountControllerExample> {
  final TextEditingController _countController = TextEditingController();
  int count = 0;

  @override
  void dispose() {
    _countController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          iconSize: 50,
          color: Colors.white,
          onPressed: () {
            setState(() {
              if (count > 0) {
                count--;
                _countController.text = count.toString();
              }
            });
          },
        ),
        const SizedBox(width: 10),
        Text(
          '$count',
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            fontFamily: 'font_2',
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          icon: const Icon(Icons.add),
          color: Colors.white,
          iconSize: 50,
          hoverColor: Colors.yellow,
          onPressed: () {
            setState(() {
              count++;
              _countController.text = count.toString();
            });
          },
        ),
      ],
    );
  }
}
