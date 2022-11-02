import 'package:gitexplorer/Model/repo.dart';

class RepositoryService {
  List<Repository> fetchMockRepositories() {
    List<Repository> repositories = [];
    repositories.add(Repository(
        name: "cli / cli",
        asset: "assets/folder.svg",
        description: 'Githubs official command line tool'));
    repositories.add(Repository(
        name: "gnebbia / kb",
        asset: "assets/folder.svg",
        description: 'A minimalist knowledge base manager'));
    repositories.add(Repository(
        name: "schollz / croc",
        asset: "assets/greencroc.svg",
        description: 'Easily and securely send things from one computer'));
    repositories.add(Repository(
        name: "onevcat / Kingfisher",
        asset: "assets/folder.svg",
        description: 'A lightweight, pure-Swift lbirary for downloading'));
    repositories.add(Repository(
        name: "moby / moby",
        asset: "assets/folder.svg",
        description:
            'Moby Project - a collaborative project for the co...'));
    repositories.add(Repository(
        name: "strapi / strapi",
        asset: "assets/purple.svg",
        description:
        'Open source Node.js Headless CMS to easily bu...'));
    repositories.add(Repository(
        name: "arturadib/strapdown",
        asset: "assets/folder.svg",
        description:
        'Instant and elegant Markdown documents in the...'));
    return repositories;
  }
}
