import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          padding: EdgeInsets.only(top: 20),
          onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.keyboard_return_outlined)),
    );
  }
}
