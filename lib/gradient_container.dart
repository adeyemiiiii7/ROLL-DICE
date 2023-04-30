import 'package:dice_shuffle/dice_roller.dart';
import 'package:flutter/material.dart';

// Define two compile-time constants to hold the start and end alignments for the gradient
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Define a new widget called GradientContainer
class GradientContainer extends StatelessWidget {
  // Define a constructor that takes in a required parameter called 'colors'
  GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  // Declare a final List of Colors called 'colors' to hold the gradient colors passed in the constructor
  final Color color1;
  final Color color2;

  // Override the build method to build the widget
  @override
  Widget build(BuildContext context) {
    // Return a new Container widget with a gradient decoration and centered StyledText child
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin:
                startAlignment, // Set the gradient start alignment to the top left corner of the container
            end:
                endAlignment, // Set the gradient end alignment to the bottom right corner of the container
          ),
        ),
        child: Center(
          child: DiceRoller(),
        ));
  }
}


// // Define a new widget called GradientContainer
// class GradientContainer extends StatelessWidget {
//   // Define a constructor that takes in a required parameter called 'colors'
//   const GradientContainer({Key? key, required this.colors}) : super(key: key);

//   // Declare a final List of Colors called 'colors' to hold the gradient colors passed in the constructor
//   final List<Color> colors;

//   // Override the build method to build the widget
//   @override
//   Widget build(BuildContext context) {
//     // Return a new Container widget with a gradient decoration and centered StyledText child
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin:
//               startAlignment, // Set the gradient start alignment to the top left corner of the container
//           end:
//               endAlignment, // Set the gradient end alignment to the bottom right corner of the container
//         ),
//       ),
//       child: Center(
//         child: StyledText(
//             'yoooo'), // Use the custom 'StyledText' widget with a text value of 'yoooo'
//       ),
//     );
//   }
// }
