// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopping_cart/pages/myproducts.dart';


class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            const Center(
              child: Text('Gallery images',style: TextStyle(
                fontSize: 20,
                color: Colors.amber, 
              ),),
            ),
            Image.asset(
              "assets/images/img1.jpg",
              width: 100,
              height: 100,
            ),
            Image.network(
              'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
              width: 100,
              height: 100,
            ),
            const Myproducts()
          ],
        );

  }
}