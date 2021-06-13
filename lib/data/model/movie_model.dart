
import 'package:movie_app/domine/entites/movie_entities.dart';

class MovieModel extends MovieEntity {
  final List<int>? genreIds;
  final String? originalLanguage;
  final String? originalTitle;
  final String posterPath;
  final bool? video;
  final num? voteAverage;
  final int id;
  final String releaseDate;
  final int? voteCount;
  final String title;
  final bool? adult;
  final String backdropPath;
  final String? overview;
  final num? popularity;
  final String? mediaType;

  MovieModel({
    required this.id,
    required this.releaseDate,
    required this.backdropPath,
    required this.title,
    required this.posterPath,
    this.genreIds,
    this.originalLanguage,
    this.originalTitle,
    this.video,
    this.voteAverage,
    this.voteCount,
    this.adult,
    this.overview,
    this.popularity,
    this.mediaType,
  }) : super(
          id: id,
          posterPath: posterPath,
          backdropPath: backdropPath,
          title: title,
          releaseDate: releaseDate,
          overview: overview,
        );

  MovieModel.fromJson(Map<String, dynamic> json) {
    genreIds = json['genre_ids'].cast<int>();
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    posterPath = json['poster_path'];
    video = json['video'];
    voteAverage = json['vote_average'];
    id = json['id'];
    releaseDate = json['release_date'];
    voteCount = json['vote_count'];
    title = json['title'];
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    overview = json['overview'];
    popularity = json['popularity'];
    mediaType = json['media_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['genre_ids'] = this.genreIds;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['id'] = this.id;
    data['release_date'] = this.releaseDate;
    data['vote_count'] = this.voteCount;
    data['title'] = this.title;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['overview'] = this.overview;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
