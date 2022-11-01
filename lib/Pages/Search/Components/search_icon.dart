import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: SvgPicture.asset(
        "assets/search_icon.svg",
      ),
    );
  }
}
