import 'package:flutter/material.dart';
import '../components/big_card.dart';
import '../components/tutorial_slider.dart';  

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox.expand(
      child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/bg-home.png")
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: BigCard(content:TutorialPanel()),
              )
            )
          ),
    );
  }
}