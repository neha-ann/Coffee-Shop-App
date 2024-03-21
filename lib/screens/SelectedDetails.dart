// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:coffee_day/widgets/stepper.dart';
import 'package:flutter/material.dart';

class SelectedDetails extends StatefulWidget {
  final image;
  final String name;
  final String price;
  const SelectedDetails(
      {super.key, this.image, required this.name, required this.price});

  @override
  State<SelectedDetails> createState() => _SelectedDetailsState();
}

class _SelectedDetailsState extends State<SelectedDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, top: 12, bottom: 8.0, left: 8),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Image(
                  image: AssetImage(widget.image),
                  width: 300,
                  height: 300,
                ),
                Text(
                  widget.name,
                  style: const TextStyle(
                      fontSize: 40, fontFamily: 'font_2', color: Colors.white),
                ),
                Text(
                  widget.price,
                  style: const TextStyle(
                      fontSize: 50, fontFamily: 'font_2', color: Colors.white),
                ),
                const SizedBox(
                  height: 60,
                ),
                const CountControllerExample(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
