
import 'package:flutter/material.dart';
import 'package:picture_select/random_image_container.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer ( {super.key} );

  @override 
  Widget build(context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold (
        body: Container(
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255,78,13,151),
            Color.fromARGB(255, 13, 246, 250),
            Color.fromARGB(255, 39, 241, 69),
            ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
      ),
    ),
    child: RandomImageContainer(),
    ),
      ),
    );
  }
}

