import 'package:flutter/material.dart';

class EmptyButton extends ElevatedButton {
  EmptyButton({
    super.key,
    super.autofocus,
    super.clipBehavior,
    super.focusNode,
    super.onLongPress,
    super.onFocusChange,
    super.onHover,
    super.statesController,
  }) : super(
          child: Container(),
          onPressed: null,
        );
}
