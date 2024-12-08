import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/myappbar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text("Welcome to the settings screen", style: TextStyle(fontSize: 24))
      )
    );
  }
}