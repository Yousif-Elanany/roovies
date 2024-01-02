import 'package:flutter/cupertino.dart';
import 'package:roovies/models/movie.dart';
import 'package:roovies/models/tmdb_Hundler.dart';

class MoviesProvider with ChangeNotifier {
  List<Movie> nowPlaying;

  Future<bool> fetchNowPlaying() async {
    try {
      nowPlaying = await tmdbHundler.instance.GetNowPlaying();
      return true;
    } catch (error) {
      return false;
    }
  }
}
