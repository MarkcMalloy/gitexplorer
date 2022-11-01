import 'package:gitexplorer/Model/repo.dart';

class RepositoryService {
  List<Repository> fetchMockRepositories() {
    List<Repository> repositories = [];
    repositories.add(Repository(
        repoName: "cli / cli",
        repoAsset: "assets/folder.svg",
        repoDescription: 'Githubs official command line tool'));
    repositories.add(Repository(
        repoName: "gnebbia / kb",
        repoAsset: "assets/folder.svg",
        repoDescription: 'A minimalist knowledge base manager'));
    repositories.add(Repository(
        repoName: "schollz / croc",
        repoAsset: "assets/folder.svg",
        repoDescription: 'Easily and securely send things from one computer'));
    repositories.add(Repository(
        repoName: "onevcat / Kingfisher",
        repoAsset: "assets/folder.svg",
        repoDescription: 'A lightweight, pure-Swift lbirary for downloading'));
    repositories.add(Repository(
        repoName: "moby / moby",
        repoAsset: "assets/folder.svg",
        repoDescription:
            'Moby Project - a collaborative project for the co...'));
    repositories.add(Repository(
        repoName: "strapi / strapi",
        repoAsset: "assets/purple.svg",
        repoDescription:
        'Open source Node.js Headless CMS to easily bu...'));
    repositories.add(Repository(
        repoName: "arturadib/strapdown",
        repoAsset: "assets/folder.svg",
        repoDescription:
        'Instant and elegant Markdown documents in the...'));
    return repositories;
  }
}
