import 'package:gitexplorer/Model/repo.dart';
import 'package:gitexplorer/Services/repositoryservice.dart';

class ApiService {
  Future<List<Repository>> getRepositoriesFromSearchStr(
      String searchStr) async {
    RepositoryService repositoryService = RepositoryService();
    await Future.delayed(Duration(milliseconds: 350)); // Mocks API Call ping
    var repos = repositoryService.fetchMockRepositories();
    var filteredRepos =
        repos.where((element) => element.name.contains(searchStr)).toList();
    return filteredRepos;
  }
}
