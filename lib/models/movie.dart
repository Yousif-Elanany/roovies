class Movie {
  final int id;
  final String title, posterpath, backposterpath;
  final double rating;
  Movie.fromjson(dynamic json)
      : this.id = json["id"],
        this.title = json["title"],
        this.posterpath =
            'https://image.tmdb.org/t/p/original/${json['poster_path']}',
        this.backposterpath =
            'https://image.tmdb.org/t/p/original/${json["backdrop_path"]}',
        this.rating = json["vote_average"].toDouble;
}
