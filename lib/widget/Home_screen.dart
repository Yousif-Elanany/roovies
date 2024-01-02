import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roovies/helpers/constant.dart';
import 'package:roovies/models/tmdb_Hundler.dart';
import 'package:roovies/providers.dart/movies_provider.dart';
import 'package:roovies/widget/Trending_persons.dart';
import 'package:roovies/widget/movies_by_gerene.dart';
import 'package:roovies/widget/now_Playing.dart';
import 'package:roovies/widget/trending_movies.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool FirstRun, succesfull;
  @override
  void initState() {
    super.initState();
    FirstRun = true;
    succesfull = false;
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    if (FirstRun) {
      bool done = await context.read<MoviesProvider>().fetchNowPlaying();

      setState(() {
        FirstRun = false;
        succesfull = done;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    tmdbHundler.instance.GetNowPlaying();
    return Scaffold(
        backgroundColor: Constants.color,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.dehaze),
          ),
          title: Text("Roovies"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: (FirstRun)
            ? CircularProgressIndicator()
            : ListView(
                children: [
                  NowPlaying(),
                  moviesbygerne(),
                  TrendingPerson(),
                  TrendingMovies(),
                ],
              ));
  }
}
