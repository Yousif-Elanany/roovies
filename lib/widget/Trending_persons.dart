import 'package:flutter/material.dart';
import 'package:roovies/widget/Persons_list.dart';
import 'package:roovies/widget/movies_list.dart';

class TrendingPerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            child: Text(
              "Trending persons of this week",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          PersonList(),
        ],
      ),
    );
  }
}
