// ignore_for_file: file_names

import 'package:coffee_day/screens/homePage.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Coffee_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            // Wrap your Padding widgets in a Column
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Padding(
                padding: EdgeInsets.only(right: 150.0),
                child: Text(
                  'Grab your ',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 150.0),
                child: Text(
                  'Coffee ',
                  style: TextStyle(
                    fontFamily: 'font',
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.only(right: 150),
                  child: const Image(
                    image: AssetImage('assets/images/coffee.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
