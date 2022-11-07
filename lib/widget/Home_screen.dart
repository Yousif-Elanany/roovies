import 'package:flutter/material.dart';
import 'package:roovies/helpers/constant.dart';
import 'package:roovies/widget/Trending_persons.dart';
import 'package:roovies/widget/movies_by_gerene.dart';
import 'package:roovies/widget/movies_list.dart';
import 'package:roovies/widget/now_Playing.dart';
import 'package:roovies/widget/trending_movies.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        children: [
          NowPlaying(),
          moviesbygerne(),
          TrendingPerson(),
          TrendingMovies(),
        ],
      ),
    );
  }
}
