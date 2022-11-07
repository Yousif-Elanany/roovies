import 'package:flutter/material.dart';
import 'package:roovies/widget/movies_list.dart';

class moviesbygerne extends StatefulWidget {
  @override
  State<moviesbygerne> createState() => _moviesbygerneState();
}

class _moviesbygerneState extends State<moviesbygerne>
    with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    tabController = TabController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      color: Colors.amber,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 10,
          bottom: TabBar(
            isScrollable: true,
            controller: tabController,
            tabs: [
              const Tab(
                text: "action",
              ),
              const Tab(
                text: "comedy",
              ),
              const Tab(
                text: "Romantic",
              ),
              const Tab(
                text: "Horror",
              ),
              const Tab(
                text: "sci_fi",
              ),
              const Tab(
                text: "Thiller",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            moviesList(),
            moviesList(),
            moviesList(),
            moviesList(),
            moviesList(),
            moviesList(),
          ],
        ),
      ),
    );
  }
}
