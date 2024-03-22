import 'package:coffee_day/screens/homePage.dart';
import 'package:flutter/material.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({Key? key});

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
        child: FutureBuilder<void>(
          future: _performPayment(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Display circular progress indicator while waiting
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              // Display payment success message after completing payment
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                    size: 100,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Payment Successful',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'font_2',
                    ),
                  ),
                  const SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.grey, width: 2.0),
                      ),
                    ),
                    child: const Text(
                      'Continue Shopping',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'font_2',
                      ),
                    ),
                  ),
                ],
              );
            } else {
              // Handle error state
              return Center(
                child: Text('An error occurred'),
              );
            }
          },
        ),
      ),
    );
  }

  // Simulate a payment process
  Future<void> _performPayment() async {
    // Simulate a delay to mimic payment processing
    await Future.delayed(Duration(seconds: 3));
    // Simulate successful payment
    return;
  }
}
