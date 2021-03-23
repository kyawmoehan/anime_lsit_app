import 'package:flutter/foundation.dart';

enum Type {
  TV,
  OVA,
  ONA,
  Movie,
  Special,
}

enum Status {
  Complete,
  Airing,
  NotYet,
}

class Anime {
  final String id;
  final String title;
  final String image;
  final String description;
  final Type type;
  final int episodes;
  final Status status;
  final String aired;
  final List<String> genres;

  const Anime({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.description,
    @required this.type,
    @required this.episodes,
    @required this.status,
    @required this.aired,
    @required this.genres,
  });
}
