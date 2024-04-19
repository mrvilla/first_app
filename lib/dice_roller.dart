import 'dart:math';

import 'package:flutter/material.dart';

// only created once and not like the state object
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // replace with currentDiceRollNumber
  var currentDiceRollNumber = 1;
  // var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    // replace with currentDiceRollNumber
    // var randomDiceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRollNumber = randomizer.nextInt(6) + 1;
      // remove and bring state down to where it was
      // activeDiceImage = 'assets/images/dice-$randomDiceRoll.png';
    });
    print('dice rolled....');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRollNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
            onPressed: rollDice,
            child: const Text('Roll the Dice')
        )
      ],
    );
  }
}
