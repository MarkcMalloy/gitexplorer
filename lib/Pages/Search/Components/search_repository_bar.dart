import 'package:flutter/material.dart';

class SearchRepositoriesBar extends StatefulWidget {
  const SearchRepositoriesBar({Key? key}) : super(key: key);

  @override
  State<SearchRepositoriesBar> createState() => _SearchRepositoriesBarState();
}

class _SearchRepositoriesBarState extends State<SearchRepositoriesBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: const Color(0xfff2f3f7)),
      child: Row(
        children: [searchIcon()],
      ),
    );
  }

  Widget searchIcon() {
    return Icon(
      Icons.search,
      color: Theme.of(context).primaryColor,
    );
  }
}
