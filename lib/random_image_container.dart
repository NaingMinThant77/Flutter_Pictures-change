import 'package:flutter/material.dart';
import 'dart:math';

class RandomImageContainer extends StatefulWidget {
  @override
  _RandomImageContainerState createState() => _RandomImageContainerState();
}

class _RandomImageContainerState extends State<RandomImageContainer> {
  var currentImageUrl = 1;

  void changeImage() {
    setState(() {
      final random = Random();
      currentImageUrl = random.nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dog$currentImageUrl.jfif',
            width: 200,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: changeImage,
            child: const Text('Change Image'),
          ),
        ],
      ),
    );
  }
}
