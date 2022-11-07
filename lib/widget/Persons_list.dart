import 'package:flutter/material.dart';
import 'package:roovies/helpers/Dummy_data.dart';

class PersonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        itemExtent: 110,
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
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                            dummydata.Nowplaying[index]["poster_url"],
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  flex: 7,
                ),
                FittedBox(
                  child: Expanded(
                    flex: 3,
                    child: Center(
                      child: Text(
                        dummydata.Nowplaying[index]["movie_name"],
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
