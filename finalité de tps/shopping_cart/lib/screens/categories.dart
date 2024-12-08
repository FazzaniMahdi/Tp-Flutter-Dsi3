import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/myappbar.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text("Welcome to the categories screen", style: TextStyle(fontSize: 24))
      )
    );
  }
}