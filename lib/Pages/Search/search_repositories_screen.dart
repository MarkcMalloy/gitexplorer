import 'package:flutter/material.dart';
import 'package:gitexplorer/Services/apiservice.dart';
import 'package:gitexplorer/Pages/Search/Components/repository_library_headline.dart';
import 'package:gitexplorer/Pages/Search/Components/search_repository_bar.dart';

class SearchRepositoriesScreen extends StatefulWidget {
  const SearchRepositoriesScreen({Key? key}) : super(key: key);

  @override
  State<SearchRepositoriesScreen> createState() =>
      _SearchRepositoriesScreenState();
}

class _SearchRepositoriesScreenState extends State<SearchRepositoriesScreen> {
  ApiService apiService = ApiService();
  String searchStr = "";

  @override
  void initState() {
    super.initState();
    getSavedRepositories();
  }

  Future getSavedRepositories() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [RepositoryHeadline(), SearchRepositoriesBar()],
          ),
        ),
      ),
    );
  }
}
