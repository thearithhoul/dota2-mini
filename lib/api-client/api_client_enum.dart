enum ApiClientEnum {
  listAllHero,
  searchHero,
}

extension ApiClientExtension on ApiClientEnum {
  String get url {
    switch (this) {
      case ApiClientEnum.listAllHero:
        return '/api/v1/heros/all-heros';
      case ApiClientEnum.searchHero:
        return '/api/v1/heros/heros';
    }
  }
}
