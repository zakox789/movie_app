import 'package:equatable/equatable.dart';
import 'package:movie_app/data/model/movie_model.dart';

abstract class MoviesResultModel extends Equatable{
  final List<MovieModel>? movies;

  const MoviesResultModel({this.movies});

  factory MoviesResultModel.fromJson(Map<String, dynamic> json) {
    List<MovieModel> movies = List<MovieModel>.generate(
      json['results'].length,
      (index) => MovieModel.fromJson(json['results'][index]),
    );
    return MoviesResultModel(movies: movies);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.movies != null) {
      data['results'] = this.movies?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
