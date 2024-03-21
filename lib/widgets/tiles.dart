// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'package:coffee_day/screens/SelectedDetails.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatefulWidget {
  final image;
  final String textName;
  final String textPrice;

  const MenuTile({
    super.key,
    required this.image,
    required this.textName,
    required this.textPrice,
  });

  @override
  _MenuTileState createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  bool isFavorited = false; // Represents whether the icon is favorited

  @override
  Widget build(BuildContext context) {
    Color iconColor = isFavorited ? Colors.red : Colors.black;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SelectedDetails(
                        image: widget.image,
                        name: widget.textName,
                        price: widget.textPrice,
                      )));
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0), // Adjust padding as needed
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 134, 134, 134),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 90, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle the value of isFavorited
                          isFavorited = !isFavorited;
                        });
                      },
                      child: Icon(
                        Icons.favorite,
                        color: iconColor,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Image(
                      image: AssetImage(widget.image),
                      height: 100,
                      width: 80,
                    ),
                  ),
                  Text(
                    widget.textName,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'font_2',
                        color: Colors.white),
                  ),
                  Text(
                    widget.textPrice,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'font_2',
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
