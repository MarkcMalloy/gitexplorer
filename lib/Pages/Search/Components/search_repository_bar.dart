import 'package:flutter/material.dart';
import 'package:gitexplorer/Pages/Search/Components/search_icon.dart';

class SearchRepositoriesBar extends StatefulWidget {
  final Function search;
  const SearchRepositoriesBar({Key? key, required this.search}) : super(key: key);

  @override
  State<SearchRepositoriesBar> createState() => _SearchRepositoriesBarState();
}

class _SearchRepositoriesBarState extends State<SearchRepositoriesBar> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 60,
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: const Color(0xfff2f3f7)),
        child: textField());
  }

  Widget textField() {
    TextStyle? style = Theme.of(context).textTheme.bodyText2;
    return TextFormField(
      onChanged: (str) {
        widget.search(searchController.text);
      },
      decoration: InputDecoration(
          labelText: 'Search for repository',
          hintStyle: style,
          prefixIcon: const SearchIcon(),
          border: InputBorder.none),
      controller: searchController ,
    );
  }
}
