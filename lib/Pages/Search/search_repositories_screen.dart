import 'package:flutter/material.dart';
import 'package:gitexplorer/Model/repo.dart';
import 'package:gitexplorer/Services/apiservice.dart';
import 'package:gitexplorer/Pages/Search/Components/repository_library_headline.dart';
import 'package:gitexplorer/Pages/Search/Components/search_repository_bar.dart';
import 'package:gitexplorer/Pages/Search/Components/no_search_result.dart';
import 'package:gitexplorer/Pages/Search/Components/repositories_listview.dart';

class SearchRepositoriesScreen extends StatefulWidget {
  const SearchRepositoriesScreen({Key? key}) : super(key: key);

  @override
  State<SearchRepositoriesScreen> createState() =>
      _SearchRepositoriesScreenState();
}

class _SearchRepositoriesScreenState extends State<SearchRepositoriesScreen> {
  ApiService apiService = ApiService();
  List<Repository> searchResult = [];
  bool isLoading = false;

  //getSavedRepos searches ahead if the searchstring is at least 3 characters in length
  Future<void> getSavedRepositories(String searchStr) async {
    if(searchStr.length < 3){
      setResult([]); //If the searchString falls below 3 characters, the state of searchResult will be cleared
    } else {
      var result = await apiService.getRepositoriesFromSearchStr(searchStr);
      setState(() {
        searchResult = result;
      });
      await Future.delayed(const Duration(milliseconds: 100));
    }

  }

  setResult(List<Repository> result){
    setState(() {
      searchResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Wrap(
                  children: [
                    const RepositoryHeadline(),
                    SearchRepositoriesBar(search: getSavedRepositories),
                  ],
                ),
              ),
              Flexible(flex: 5, child: showSearchResult())
            ],
          ),
        ),
      ),
    );
  }

  Widget showSearchResult() {
    return Visibility(
      visible: searchResult.isNotEmpty,
      replacement: const NoRepositoryResult(),
      child: SavedRepositoriesListview(repos: searchResult),
    );
  }
}
