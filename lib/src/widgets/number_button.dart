import 'package:flutter/material.dart';
import 'package:pin_keypad/src/widgets/key_button.dart';

class NumberButton extends KeyButton {
  NumberButton(
      {super.key,
      super.autofocus,
      super.clipBehavior,
      super.focusNode,
      super.onLongPress,
      super.style,
      super.onFocusChange,
      super.onHover,
      super.statesController,
      required String value,
      required Function(String) onNumberPressed,
      TextStyle? textStyle})
      : super(
          child: Text(value, style: textStyle),
          onPressed: () {
            onNumberPressed(value);
          },
        );
}
