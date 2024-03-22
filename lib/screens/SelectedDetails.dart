// ignore_for_file: file_names

import 'package:coffee_day/screens/cart.dart';
import 'package:coffee_day/widgets/Counter.dart';
import 'package:coffee_day/widgets/size.dart';
import 'package:flutter/material.dart';

class SelectedDetails extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  const SelectedDetails({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  State<SelectedDetails> createState() => _SelectedDetailsState();
}

class _SelectedDetailsState extends State<SelectedDetails> {
  String selectedSize = 'S';
  int counterValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Image(
                  image: AssetImage(widget.image),
                  width: 330,
                  height: 330,
                ),
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'font_2',
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.price,
                  style: const TextStyle(
                    fontSize: 40,
                    fontFamily: 'font_2',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                CoffeeSize(
                  onSizeSelected: (size) {
                    setState(() {
                      selectedSize = size;
                    });
                  },
                ),
                const SizedBox(height: 20),
                Counter(
                  onCounterChanged: (value) {
                    setState(() {
                      counterValue = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Cart(
                                  image: widget.image,
                                  size: selectedSize,
                                  count: counterValue.toString(),
                                  name: widget.name,
                                  price: widget.price,
                                )));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: Colors.grey, width: 2.0),
                    ),
                  ),
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'font_2',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
