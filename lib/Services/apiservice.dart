import 'package:gitexplorer/Model/repo.dart';
import 'package:gitexplorer/Services/repositoryservice.dart';

/*
This class mocks an API
 */
class ApiService {

  /*
  This method mocks a GET search query
   */
  Future<List<Repository>> getRepositoriesFromSearchStr(
      String searchStr) async {
    RepositoryService repositoryService = RepositoryService();
    await Future.delayed(const Duration(milliseconds: 350)); // Mocks API response time
    var repos = repositoryService.fetchMockRepositories(); // Fetches all mocked values
    var filteredRepos = repos.where((repo) => repo.name.contains(searchStr)).toList();
    return filteredRepos;
  }
}
