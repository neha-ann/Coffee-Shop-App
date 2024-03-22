import 'package:coffee_day/screens/Success.dart';
import 'package:coffee_day/widgets/textField.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({super.key});

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

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
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "My Wallet",
                style: TextStyle(
                    fontSize: 32, fontFamily: 'font_2', color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  hintText: "Enter the card number (xxxx-xxxx-xxxx-xxxx)",
                  textEditingController: _numberController,
                  onChanged: (value) {
                    setState(() {
                      String text = value.replaceAll(
                          RegExp(r'\D'), ''); // Remove non-digit characters
                      String formattedText = '';
                      for (var i = 0; i < 16; i++) {
                        formattedText += text[i];
                        if ((i + 1) % 4 == 0 && i != 16 - 1) {
                          formattedText +=
                              ' '; // Add a dash after every four digits
                        }
                      }
                      _numberController.value =
                          _numberController.value.copyWith(
                        text: formattedText,
                        selection: TextSelection.collapsed(
                            offset: formattedText.length),
                      );
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  hintText: "Enter the card Holder Name",
                  textEditingController: _nameController,
                  onChanged: (_) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  hintText: "Enter the expiry date (MM/YY)",
                  textEditingController: _dateController,
                  onChanged: (value) {
                    setState(() {
                      String text = value.replaceAll(
                          RegExp(r'\D'), ''); // Remove non-digit characters
                      if (text.length > 4) {
                        text = text.substring(
                            0, 4); // Limit the text to MMYY format
                      }
                      String formattedText = '';
                      for (var i = 0; i < text.length; i++) {
                        formattedText += text[i];
                        if (i == 1) {
                          formattedText +=
                              '/'; // Add a slash after the second character (MM)
                        }
                      }
                      _dateController.value = _dateController.value.copyWith(
                        text: formattedText,
                        selection: TextSelection.collapsed(
                            offset: formattedText.length),
                      );

                      // Check if both month and year are entered
                      if (text.length == 4) {
                        int month = int.tryParse(text.substring(0, 2)) ?? 0;
                        //int year = int.tryParse(text.substring(2)) ?? 0;
                        if (month > 12) {
                          // Truncate month if it exceeds 12
                          _dateController.text = '12/${text.substring(2)}';
                        }
                      }
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  hintText: "Enter CVV",
                  textEditingController: _cvvController,
                  onChanged: (_) => setState(() {}),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentSuccessPage()));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  side: MaterialStateProperty.all<BorderSide>(
                    const BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
                child: const Text(
                  "Pay",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'font_2'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
