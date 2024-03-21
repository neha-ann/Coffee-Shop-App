// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SelectionScreen(),
    );
  }
}

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          RadioListTile(
            title: const Text('Small'),
            value: 'Small',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
          RadioListTile(
            title: const Text('Medium'),
            value: 'Medium',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
          RadioListTile(
            title: const Text('Large'),
            value: 'Large',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
