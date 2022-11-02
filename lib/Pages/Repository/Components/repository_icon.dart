import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RepositoryIcon extends StatelessWidget {
  final String asset;
  const RepositoryIcon({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: SvgPicture.asset(asset!),
    );
  }
}
