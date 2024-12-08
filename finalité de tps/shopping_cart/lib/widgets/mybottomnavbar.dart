import 'package:flutter/material.dart';

class Mybottomnavbar extends StatelessWidget {
  const Mybottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBarWidget();
  }
}

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({super.key});

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home",
          backgroundColor: Colors.purple
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_chart),
          label: 'Documents',
          backgroundColor: Colors.teal,
        ),
        // Élément de la barre de navigation pour les produits
        BottomNavigationBarItem(
          icon: Icon(Icons.all_inbox_sharp),
          label: 'Products',
          backgroundColor: Colors.pink,
        ), 
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Colors.green,
        ), 

      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}