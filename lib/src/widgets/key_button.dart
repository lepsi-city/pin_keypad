import 'package:flutter/material.dart';

class KeyButton extends ElevatedButton {
  const KeyButton(
      {super.key,
      super.autofocus,
      super.clipBehavior,
      super.focusNode,
      super.onLongPress,
      super.style,
      super.onFocusChange,
      super.onHover,
      super.statesController,
      required Widget child,
      VoidCallback? onPressed})
      : super(child: child, onPressed: onPressed);
}
