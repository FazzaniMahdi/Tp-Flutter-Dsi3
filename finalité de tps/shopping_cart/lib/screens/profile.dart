import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/myappbar.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text("Welcome to the profile screen", style: TextStyle(fontSize: 24))
      )
    );
  }
}