class Repository {
  late String repoName;
  late String repoAsset;

  Repository({required this.repoName, required this.repoAsset});

  Repository.fromJson(Map<String, dynamic> json) {
    repoName = json['repo_name'];
    repoAsset = json['repo_asset'];
  }
}