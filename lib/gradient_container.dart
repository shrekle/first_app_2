import 'package:flutter/material.dart';

var startAligment = Alignment.topLeft;
var endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1,
      this.color2, //with...this. ...you dont need the type cuz its explicit in final var
      {super.key}); //positionall arguments are always requierd as opposed to optional type

  GradientContainer.altConstructor(
      {super.key}) //just to show how you can make two constrctor funcs
      : color1 = Colors.deepOrange,
        color2 = Colors.deepPurpleAccent;

  final Color color1;
  final Color color2;

  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll the Dice dawg!!!'),
            )
          ],
        ),
      ),
    );
  }
}



// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colorss});//named arguments are optional type so requiered keyword is needed

//   final List<Color> colorss; //even tho its final, lists can be edited, consts wont work on some stuff

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colorss, //if i keep the const keyword, it tells me that it isnt a class, dunno why
//           begin: startAligment,
//           end: endAligment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('chale'),
//       ),
//     );
//   }
// }
