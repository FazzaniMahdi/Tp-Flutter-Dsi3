import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/myappbar.dart';

class Documents extends StatelessWidget {
  const Documents({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text("Welcome to the documents screen", style: TextStyle(fontSize: 24))
      )
    );
  }
}