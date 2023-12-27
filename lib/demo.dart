import 'package:flutter/material.dart';
import 'package:new_pinput/new_pinput.dart';

import 'constants/colors.dart';
import 'constants/fonts_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PinPutExample(),
    );
  }
}

class PinPutExample extends StatefulWidget {
  @override
  _PinPutExampleState createState() => _PinPutExampleState();
}

class _PinPutExampleState extends State<PinPutExample> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PIN Input Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Pinput(
            length: 4,
            onSubmitted: (String pin) {
              // Handle the submitted PIN
              print("PIN entered: $pin");
            },
            focusNode: _pinPutFocusNode,
            controller: _pinPutController,
            defaultPinTheme: PinTheme(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: AppColors.colorWhiteHighEmp,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12)),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeights.Bold,
                )),
          ),
        ),
      ),
    );
  }
}
