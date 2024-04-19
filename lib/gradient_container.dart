import 'package:first_app/dice_roller.dart';
import 'package:first_app/styled_intro_text.dart';
import 'package:flutter/material.dart';

const beginAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer( this.color1, this.color2, {super.key});

  // example of how you can have multiple constructors
  const GradientContainer.blue({super.key})
      : color1 = Colors.blueAccent,
        color2 = Colors.purple;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: beginAlignment,
              end: endAlignment
          )
      ),
      child: const Center(
          child: DiceRoller()
        )
      );
  }
}
