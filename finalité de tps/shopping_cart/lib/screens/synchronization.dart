import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/myappbar.dart';

class Synchronization extends StatelessWidget {
  const Synchronization({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text("Welcome to the Synchronization screen", style: TextStyle(fontSize: 24))
      )
    );
  }
}