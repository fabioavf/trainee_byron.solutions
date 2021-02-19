import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final/buttons.dart';
import 'package:projeto_final/main.dart';

class CalculatorHome extends StatefulWidget {
  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  final List<String> buttonList = [
    '',
    '0',
    '.',
    '=',
    '1',
    '2',
    '3',
    '-',
    '4',
    '5',
    '6',
    '+',
    '7',
    '8',
    '9',
    '/',
    'C',
    '(',
    ')',
    '*',
  ];

  String input = '';
  String output = '';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    EdgeInsets screenPadding = MediaQuery.of(context).padding;

    double usableScreenHeight = screenSize.height - screenPadding.top;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Container(
            height: usableScreenHeight * .3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: Text(
                    input,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: Text(
                    output,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: usableScreenHeight * .7,
            child: GridView.builder(
              reverse: true,
              padding: EdgeInsets.all(0),
              physics: ScrollPhysics(),
              itemCount: buttonList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                if (buttonList[index] == 'C') {
                  return CalculatorButton(
                    buttonColor: Theme.of(context).primaryColorLight,
                    buttonText: buttonList[index],
                    textColor: Color.fromRGBO(75, 212, 166, 1),
                    onButtonTap: () {
                      HapticFeedback.vibrate();
                      setState(
                        () {
                          if (input != '') {
                            input = input.substring(0, input.length - 1);
                          }
                        },
                      );
                    },
                    onLongPress: () {
                      setState(() {
                        input = '';
                        output = '';
                      });
                    },
                  );
                } else if (buttonList[index] == '=') {
                  return CalculatorButton(
                    buttonColor: Theme.of(context).hintColor,
                    buttonText: buttonList[index],
                    textColor: Color.fromRGBO(219, 62, 81, 1),
                    onButtonTap: () {
                      HapticFeedback.vibrate();
                      setState(
                        () {
                          Parser parser = Parser();
                          Expression expression = parser.parse(input);
                          ContextModel contextModel = ContextModel();
                          double eval = expression.evaluate(
                              EvaluationType.REAL, contextModel);

                          input = expression.toString();
                          output = eval.toString();
                        },
                      );
                    },
                  );
                } else if (buttonList[index] == '') {
                  return Container();
                } else {
                  return CalculatorButton(
                    buttonColor: isNumber(buttonList[index])
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColorLight,
                    buttonText: buttonList[index],
                    textColor: isNumber(buttonList[index])
                        ? Theme.of(context).textTheme.headline5.color
                        : Color.fromRGBO(75, 212, 166, 1),
                    onButtonTap: () {
                      HapticFeedback.vibrate();
                      setState(
                        () {
                          input += buttonList[index];
                        },
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Scaffold(
//       backgroundColor: Theme.of(context).backgroundColor,
//       body: Column(
//         children: [
//           SizedBox(
//             height: MediaQuery.of(context).padding.top,
//           ),
//           Container(
//             height: 250,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   margin: EdgeInsets.all(20),
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     input,
//                     style: Theme.of(context).textTheme.headline6,
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(20),
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     output,
//                     style: Theme.of(context).textTheme.headline4,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Theme.of(context).primaryColorDark,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                 ),
//               ),
//               child: GridView.builder(
//                 padding: EdgeInsets.all(8),
//                 itemCount: buttonList.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4),
//                 itemBuilder: (BuildContext context, int index) {
//                   if (buttonList[index] == 'AC') {
//                     return CalculatorButton(
//                       buttonColor: Theme.of(context).hintColor,
//                       buttonText: buttonList[index],
//                       textColor: Colors.white,
//                       onButtonTap: () {
//                         setState(
//                           () {
//                             input = '';
//                             output = '';
//                           },
//                         );
//                       },
//                     );
//                   } else if (buttonList[index] == 'C') {
//                     return CalculatorButton(
//                       buttonColor: Theme.of(context).errorColor,
//                       buttonText: buttonList[index],
//                       textColor: Colors.white,
//                       onButtonTap: () {
//                         setState(
//                           () {
//                             if (input != '') {
//                               input = input.substring(0, input.length - 1);
//                             }
//                           },
//                         );
//                       },
//                     );
//                   } else if (buttonList[index] == '=') {
//                     return CalculatorButton(
//                       buttonColor: Theme.of(context).accentColor,
//                       buttonText: buttonList[index],
//                       textColor: Colors.white,
//                       onButtonTap: () {
//                         setState(
//                           () {
//                             Parser parser = Parser();
//                             Expression expression = parser.parse(input);
//                             ContextModel contextModel = ContextModel();
//                             double eval = expression.evaluate(
//                                 EvaluationType.REAL, contextModel);

//                             input = expression.toString();
//                             output = eval.toString();
//                           },
//                         );
//                       },
//                     );
//                   } else if (buttonList[index] == '') {
//                     return Container();
//                   } else {
//                     return CalculatorButton(
//                       buttonColor: Theme.of(context).accentColor,
//                       buttonText: buttonList[index],
//                       textColor: Colors.white,
//                       onButtonTap: () {
//                         setState(
//                           () {
//                             input += buttonList[index];
//                           },
//                         );
//                       },
//                     );
//                   }
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
