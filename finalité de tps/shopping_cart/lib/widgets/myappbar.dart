import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key}) : preferredSize = const Size.fromHeight(56.0);
  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    //! app bar isn't a const nor should its parent be a const
    return AppBar(
      title: const Text('app bar title text'),
      backgroundColor: Colors.grey,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.pushNamed(context, '/shopping');
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_bag,
            color: Colors.amber,
          ),
          tooltip: 'open shopping bag',
          onPressed: () {},
        )
      ],
    );
  }
}
