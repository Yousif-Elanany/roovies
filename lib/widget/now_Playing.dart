import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:provider/provider.dart';
import 'package:roovies/helpers/Dummy_data.dart';
import 'package:roovies/providers.dart/movies_provider.dart';

class NowPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: PageIndicatorContainer(
        indicatorSelectorColor: Theme.of(context).accentColor,
        padding: EdgeInsets.symmetric(vertical: 5),
        shape: IndicatorShape.circle(size: 5),
        length: 5,
        child: PageView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      dummydata.Nowplaying[index]["poster_url"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).primaryColor.withOpacity(0),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 10,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        dummydata.Nowplaying[index]["movie_name"],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle_outlined,
                            color: Theme.of(context).accentColor,
                            size: 50,
                          )))
                ],
              );
            }),
      ),
    );
  }
}
