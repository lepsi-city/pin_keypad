import 'package:flutter/material.dart';
import 'package:pin_keypad/src/widgets/empty_button.dart';
import 'package:pin_keypad/src/widgets/key_button.dart';
import 'package:pin_keypad/src/widgets/number_button.dart';

/// Displays a keypad for entering a PIN
class PinKeypad extends StatelessWidget {
  /// Function to call when a key is pressed; it returns the key value (0-9) as String
  final Function(String) onKeyPressed;

  /// Button Style that will be applied to all buttons in the keypad
  final ButtonStyle? buttonStyle;

  /// Text Style that will be applied to all Text in the keypad (0-9)
  final TextStyle? textStyle;

  /// Widget to display in the left bottom button
  final Widget? leftButtonChild;

  /// Function to call when the left bottom button is pressed. You must supply widget to leftButtonChild for this to work
  final Function()? leftButtonFunction;

  /// Widget to display in the right bottom button
  final Widget? rightButtonChild;

  /// Function to call when the right bottom button is pressed. You must supply widget to rightButtonChild for this to work
  final Function()? rightButtonFunction;

  const PinKeypad(
      {Key? key,
      required this.onKeyPressed,
      this.leftButtonChild,
      this.leftButtonFunction,
      this.rightButtonChild,
      this.rightButtonFunction,
      this.buttonStyle,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            NumberButton(
              onNumberPressed: onKeyPressed,
              value: "1",
              textStyle: textStyle,
            ),
            NumberButton(
              onNumberPressed: onKeyPressed,
              value: "2",
              textStyle: textStyle,
            ),
            NumberButton(
              onNumberPressed: onKeyPressed,
              value: "3",
              textStyle: textStyle,
            ),
          ],
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            NumberButton(
              onNumberPressed: onKeyPressed,
              value: "4",
              textStyle: textStyle,
            ),
            NumberButton(
              onNumberPressed: onKeyPressed,
              value: "5",
              textStyle: textStyle,
            ),
            NumberButton(
              onNumberPressed: onKeyPressed,
              value: "6",
              textStyle: textStyle,
            ),
          ],
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            NumberButton(
              onNumberPressed: onKeyPressed,
              value: "7",
              textStyle: textStyle,
            ),
            NumberButton(
              onNumberPressed: onKeyPressed,
              value: "8",
              textStyle: textStyle,
            ),
            NumberButton(
              onNumberPressed: onKeyPressed,
              value: "9",
              textStyle: textStyle,
            ),
          ],
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            leftButtonChild != null ? KeyButton(onPressed: leftButtonFunction ?? () {}, child: leftButtonChild!) : EmptyButton(),
            NumberButton(
              onNumberPressed: onKeyPressed,
              value: "0",
              textStyle: textStyle,
            ),
            rightButtonChild != null ? KeyButton(onPressed: rightButtonFunction ?? () {}, child: rightButtonChild!) : EmptyButton(),
          ],
        ),
      ],
    );
  }
}
