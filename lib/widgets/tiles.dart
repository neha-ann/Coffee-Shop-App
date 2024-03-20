import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final image;
  final String textName;
  final String textPrice;
  const MenuTile(
      {super.key,
      required this.image,
      required this.textName,
      required this.textPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0), // Adjust padding as needed
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 236, 204, 192),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 90, top: 10),
                  child: const Icon(Icons.favorite),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Image(
                    image: AssetImage(image),
                    height: 100,
                    width: 80,
                  ),
                ),
                Text(
                  textName,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  textPrice,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
