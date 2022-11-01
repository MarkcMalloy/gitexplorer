import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  final int numberOfResults;
  const ResultText({Key? key, required this.numberOfResults}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var resultString = "$numberOfResults ${numberOfResults<2 ? "result" : "results"}";
    return  Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Text(
        resultString,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
