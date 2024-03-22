import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final void Function(String)? onChanged;

  const MyTextField({
    Key? key,
    required this.hintText,
    required this.textEditingController,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextField(
        controller: textEditingController,
        onChanged: onChanged, // Pass onChanged to TextField
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        style:
            TextStyle(color: Colors.white, fontFamily: 'font_2', fontSize: 20),
      ),
    );
  }
}
