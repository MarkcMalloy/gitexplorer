import 'package:flutter/material.dart';
import 'package:gitexplorer/Services/apiservice.dart';
class SearchRepositoriesScreen extends StatefulWidget {
  const SearchRepositoriesScreen({Key? key}) : super(key: key);

  @override
  State<SearchRepositoriesScreen> createState() => _SearchRepositoriesScreenState();
}

class _SearchRepositoriesScreenState extends State<SearchRepositoriesScreen> {
  ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    getSavedRepositoried();
  }

  Future getSavedRepositoried() async {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

      ),
    );
  }
}
