import 'dart:convert';

Person welcomeFromJson(String str) => Person.fromJson(json.decode(str));

class Person {
  Person({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  int page;
  List<Celebrity> results;
  int totalPages;
  int totalResults;

  factory Person.fromJson(Map<String, dynamic> json) => Person(
    page: json["page"],
    results: List<Celebrity>.from(json["results"].map((x) => Celebrity.fromJson(x))),
    totalPages: json["total_pages"],
    totalResults: json["total_results"],
  );
}

class Celebrity {
  Celebrity({
    this.adult,
    this.gender,
    this.id,
    this.knownFor,
    this.knownForDepartment,
    this.name,
    this.popularity,
    this.profilePath,
  });

  bool adult;
  int gender;
  int id;
  List<KnownFor> knownFor;
  String knownForDepartment;
  String name;
  double popularity;
  String profilePath;

  factory Celebrity.fromJson(Map<String, dynamic> json) => Celebrity(
    adult: json["adult"] == null ? null : json["adult"],
    gender: json["gender"] == null ? null : json["gender"],
    id: json["id"] == null ? null : json["id"],
    knownFor: json["known_for"] == null ? null : List<KnownFor>.from(json["known_for"].map((x) => KnownFor.fromJson(x))),
    knownForDepartment: json["known_for_department"] == null ? null : json["known_for_department"],
    name: json["name"] == null ? null : json["name"],
    popularity: json["popularity"] == null ? null : json["popularity"].toDouble(),
    profilePath: json["profile_path"] == null ? null : json["profile_path"],
  );
}
class KnownFor {
  KnownFor({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.mediaType,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  bool adult;
  String backdropPath;
  List<int> genreIds;
  int id;
  MediaType mediaType;
  OriginalLanguage originalLanguage;
  String originalTitle;
  String overview;
  String posterPath;
  DateTime releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  factory KnownFor.fromJson(Map<String, dynamic> json) => KnownFor(
    adult: json["adult"],
    backdropPath: json["backdrop_path"],
    genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
    id: json["id"],
    mediaType: mediaTypeValues.map[json["media_type"]],
    originalLanguage: originalLanguageValues.map[json["original_language"]],
    originalTitle: json["original_title"],
    overview: json["overview"],
    posterPath: json["poster_path"],
   // releaseDate: DateTime.parse(json["release_date"]),
    title: json["title"],
    video: json["video"],
    voteAverage: json["vote_average"].toDouble(),
    voteCount: json["vote_count"],
  );
}

enum MediaType { MOVIE }

final mediaTypeValues = EnumValues({
  "movie": MediaType.MOVIE
});

enum OriginalLanguage { EN }

final originalLanguageValues = EnumValues({
  "en": OriginalLanguage.EN
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
