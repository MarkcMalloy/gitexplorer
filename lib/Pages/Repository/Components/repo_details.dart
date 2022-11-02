import 'package:flutter/material.dart';

/*
This component will display the number of Forks, Issues, Started by & Last Release version of a given repo
 */
class RepoDetails extends StatelessWidget {
  const RepoDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffE6E6E6)),
          borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        children: [],
      ),
    );
  }
}
