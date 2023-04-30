// Importing the necessary packages
import 'package:flutter/material.dart';
import 'dart:math';

// Defining a stateful widget for the DiceRoller
class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

// Creating a state instance for the DiceRoller widget
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

// Defining the state of the DiceRoller widget
class _DiceRollerState extends State<DiceRoller> {
// Declaring a default state variable for the dice image
  var diceImage = '1';

// Method to roll the dice
  void rollDice() {
    var roll =
        Random().nextInt(6) + 1; // Generate a random number between 1 and 6
    setState(() {
      diceImage = roll
          .toString(); // Update the dice image state variable with the new roll
    });
  }

// Building the UI of the widget
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceImage.png', // Displaying the dice image based on the state variable
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed:
              rollDice, // Trigger the rollDice method when the button is pressed
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'), // Displaying the text of the button
        )
      ],
    );
  }
}
