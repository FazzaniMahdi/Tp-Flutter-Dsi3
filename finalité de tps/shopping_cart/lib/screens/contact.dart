import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/myappbar.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text("Welcome to the contact screen", style: TextStyle(fontSize: 24))
      )
    );
  }
}