class Repository {
  late String repoName;
  late String repoAsset;
  late String repoDescription;

  Repository({required this.repoName, required this.repoAsset, required this.repoDescription});

  Repository.fromJson(Map<String, dynamic> json) {
    repoName = json['repo_name'];
    repoAsset = json['repo_asset'];
    repoDescription = json['repoDescription'];
  }
}