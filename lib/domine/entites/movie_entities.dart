import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class MovieEntity extends Equatable {
  final String posterPath;
  final int id;
  final String backdropPath;
  final String title;
  final String releaseDate;
  final String? overview;

  MovieEntity({
    required this.posterPath,
    required this.id,
    required this.backdropPath,
    required this.title,
    required this.releaseDate,
    this.overview,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, title];

  @override
  bool get stringify => true;
}
