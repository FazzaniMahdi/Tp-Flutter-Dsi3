import 'package:flutter/material.dart';

class Mydiapos extends StatefulWidget {
  const Mydiapos({super.key});

  @override
  State<Mydiapos> createState() => MydiaposState();
}

class MydiaposState extends State<Mydiapos> {
  int counter = 0;
  List<String> images = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
    "assets/images/img5.jpg",
  ];
  void _nextImage() {
    setState(() {
      if(counter < images.length-1) {
        counter ++;
      }
      else {
        counter = 0;
      }
    });
  }

  void _previousImage() {
    setState(() {
      if(counter > 0) {
        counter --;
      }
      else {
        counter = images.length - 1;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // shouldn't be a const despite what the compiler says
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Image numéro ${counter+1}"),
        const SizedBox(height: 20),
        Image.asset(
          images[counter],
          height: 300,
          width: 200,
          fit: BoxFit.cover
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _previousImage,
              child: const Text("previous image"),
            ),
            ElevatedButton(onPressed: _nextImage, child: const Text("next image"))
          ],
        )
      ],
    );
  }
  
}