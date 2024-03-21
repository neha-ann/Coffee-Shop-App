import 'package:coffee_day/widgets/tiles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  MenuTile(
                    image: 'assets/images/cappucino.png',
                    textName: "Cappucino",
                    textPrice: "\$10",
                  ),
                  MenuTile(
                    image: 'assets/images/expresso.png',
                    textName: 'Expresso',
                    textPrice: "\$15",
                  ),
                ],
              ),
              Row(
                children: [
                  MenuTile(
                    image: 'assets/images/coldCoffee.png',
                    textName: 'Cold Coffee',
                    textPrice: "\$12",
                  ),
                  MenuTile(
                    image: 'assets/images/Lattee.png',
                    textName: 'Latte',
                    textPrice: "\$8",
                  ),
                ],
              ),
              Row(
                children: [
                  MenuTile(
                    image: 'assets/images/blackCoffee.png',
                    textName: 'Black Coffee',
                    textPrice: "\$5",
                  ),
                  MenuTile(
                    image: 'assets/images/turkishCoffee.png',
                    textName: 'Turkish coffee',
                    textPrice: "\$10",
                  ),
                ],
              ),
              Row(
                children: [
                  MenuTile(
                    image: 'assets/images/irishCoffee.png',
                    textName: 'Irish Coffee',
                    textPrice: "\$15",
                  ),
                  MenuTile(
                    image: 'assets/images/mocha.png',
                    textName: 'Mocha',
                    textPrice: "\$20",
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
