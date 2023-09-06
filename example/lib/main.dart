import 'package:flutter/material.dart';
import 'package:pin_keypad/pin_keypad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pin Keypad Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String pinCode = '';

  void onKeyPressed(String value) {
    setState(() {
      pinCode += value;
    });
  }

  void onDelete() {
    setState(() {
      pinCode = pinCode.substring(0, pinCode.length - 1);
    });
  }

  void onClear() {
    setState(() {
      pinCode = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Pin Keypad Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(pinCode),
          PinKeypad(
            onKeyPressed: onKeyPressed,
            leftButtonChild: const Icon(Icons.backspace),
            leftButtonFunction: onDelete,
            rightButtonChild: const Icon(Icons.clear),
            rightButtonFunction: onClear,
          ),
        ],
      ),
    );
  }
}
