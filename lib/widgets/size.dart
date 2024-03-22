import 'package:flutter/material.dart';

class CoffeeSize extends StatefulWidget {
  final Function(String) onSizeSelected;
  const CoffeeSize({Key? key, required this.onSizeSelected}) : super(key: key);

  @override
  _CoffeeSizeState createState() => _CoffeeSizeState();
}

class _CoffeeSizeState extends State<CoffeeSize> {
  String selectedSize = 'S';

  void setSize(String size) {
    setState(() {
      selectedSize = size;
      widget.onSizeSelected(size);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizeOption(
          size: 'S',
          isSelected: selectedSize == 'S',
          onTap: () => setSize('S'),
        ),
        const SizedBox(width: 20),
        SizeOption(
          size: 'M',
          isSelected: selectedSize == 'M',
          onTap: () => setSize('M'),
        ),
        const SizedBox(width: 20),
        SizeOption(
          size: 'L',
          isSelected: selectedSize == 'L',
          onTap: () => setSize('L'),
        ),
      ],
    );
  }
}

class SizeOption extends StatelessWidget {
  final String size;
  final bool isSelected;
  final Function onTap;

  const SizeOption({
    Key? key,
    required this.size,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 50,
        width: 80, // Adjust width as needed
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? Colors.grey : Colors.transparent,
        ),
        child: Center(
          child: Text(
            size,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'font_2',
            ),
          ),
        ),
      ),
    );
  }
}
