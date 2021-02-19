import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final buttonColor;
  final textColor;
  final String buttonText;
  final onButtonTap;
  final onLongPress;

  CalculatorButton({
    this.buttonColor,
    this.textColor,
    this.buttonText,
    this.onButtonTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: RaisedButton(
        color: buttonColor,
        textColor: textColor,
        onPressed: onButtonTap,
        onLongPress: onLongPress,
        elevation: 0,
        highlightElevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: textColor,
                ),
          ),
        ),
      ),
    );
  }
}

bool isNumber(buttonText) {
  switch (buttonText) {
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case '0':
    case '.':
      return true;
      break;
    default:
      return false;
      break;
  }
}

// GestureDetector(
//       onTap: onButtonTap,
//       child: Expanded(
//         child: Container(
//           margin: EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: buttonColor,
//           ),
//           child: Center(
//             child: Text(
//               buttonText,
//               style: Theme.of(context).textTheme.headline5.copyWith(
//                     color: textColor,
//                   ),
//             ),
//           ),
//         ),
//       ),
//     );
