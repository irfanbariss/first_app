import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  void rollDice() {
    // Returns a random integer between 1 and 6 (inclusive).
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // to center vertically in the column
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ), //To seperate button and dice
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 15,
            //   bottom: 15,
            // ),
            padding: const EdgeInsets.all(12),
            foregroundColor: Colors.white, // text color
            backgroundColor: Colors.blue,
            textStyle: const TextStyle(fontSize: 21),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
