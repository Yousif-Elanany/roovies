import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:roovies/helpers/Dummy_data.dart';

class moviesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4 - 10,
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        itemExtent: 140,
        scrollDirection: Axis.horizontal,
        itemCount: dummydata.Nowplaying.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            dummydata.Nowplaying[index]["poster_url"],
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  flex: 7,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      dummydata.Nowplaying[index]["movie_name"],
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: FittedBox(
                    child: Row(
                      children: [
                        FittedBox(
                          child: Text(
                            "0.8",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 25,
                          ignoreGestures: false,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: null,
                        ),
                      ],
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
