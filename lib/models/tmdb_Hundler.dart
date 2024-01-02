import 'package:dio/dio.dart';
import 'package:roovies/models/api_key.dart';
import 'package:roovies/models/movie.dart';

class tmdbHundler {
  static tmdbHundler _instance = tmdbHundler._private();

  tmdbHundler._private();
  static tmdbHundler get instance => _instance;
  String mainUrl = "https://api.themoviedb.org/3";
  Dio _dio = Dio();
  Future<List<Movie>> GetNowPlaying() async {
    String url = "$mainUrl/movie/now_playing";
    Map<String, dynamic> params = {"api_key": ApiKey.tmdbkey};
    Response response = await _dio.get(url, queryParameters: params);
    List<Movie> movies = (response.data["results"] as List).map((e) {
      return Movie.fromjson(e);
    }).toList();
    return movies;
  }
}
