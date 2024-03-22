import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  final image;
  final String count;
  final String size;
  final String name;
  final String price;

  const Cart({
    Key? key,
    this.image,
    required this.count,
    required this.size,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  late int totalPrice; // Total price variable

  @override
  void initState() {
    super.initState();
    calculateTotalPrice(); // Calculate total price when the widget initializes
  }

  void calculateTotalPrice() {
    // Remove "$" symbol from price and parse it to an integer
    int priceWithoutSymbol = int.parse(widget.price.replaceAll('\$', ''));
    // Parse count to an integer
    int itemCount = int.parse(widget.count);
    // Calculate total price
    totalPrice = priceWithoutSymbol * itemCount;
  }

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
        child: Container(
          margin: EdgeInsets.only(bottom: 500),
          height: 300,
          width: 300,
          child: Row(
            children: [
              Image(
                image: AssetImage(widget.image),
                width: 150,
                height: 150,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'font_2',
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Size - ${widget.size}",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'font_2'),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Quantity - ${widget.count}",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'font_2'),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Total:",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'font_2'),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$ $totalPrice",
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'font_2',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
