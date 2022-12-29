import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("Enter phone numeer to proceed.",
                            style: Theme.of(context).textTheme.bodyText1),
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Form(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Phone"),
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.numbers),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Next")),
                                  )
                                ])))
                      ],
                    )))));
  }
}
