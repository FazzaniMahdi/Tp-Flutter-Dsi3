import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/Myform.dart';
class Subscribe extends StatelessWidget {
  const Subscribe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 15,
        backgroundColor: Colors.greenAccent,
        title: const Text("Subscribe"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.subscriptions_rounded),
        ),
      ),
      body: const Myform(),
    );
  }
}