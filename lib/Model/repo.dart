class Repository {
  late String name;
  late String asset;
  late String description;

  Repository({required this.name, required this.asset, required this.description});

  Repository.fromJson(Map<String, dynamic> json) {
    name = json['repo_name'];
    asset = json['repo_asset'];
    description = json['repoDescription'];
  }
}