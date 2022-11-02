import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          padding: EdgeInsets.only(top: 40),
          onPressed: () {
            Navigator.pop(context);
          }, icon: SvgPicture.asset("assets/arrow_back.svg")),
    );
  }
}
