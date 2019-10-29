import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_carousel/carousel.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetflixHome(),
    );
  }
}

List<String> genres = [
  'HORROR',
  'THRILLER',
  'ROMANTIK',
  'ACTION',
  'COMEDY',
  'SCI-FI'
];

List<String> movies = [
  'assets/movie1.jpg',
  'assets/movie2.jpg',
  'assets/movie3.jpg',
  'assets/movie4.jpg',
  'assets/movie5.jpg',
  'assets/movie6.jpg',
];

class NetflixHome extends StatefulWidget {
  @override
  _NetflixHomeState createState() => _NetflixHomeState();
}

class _NetflixHomeState extends State<NetflixHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          _getNavBar(),
          Container(
            width: MediaQuery.of(context).size.width - 60,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                _getHeadTabs(),
                SizedBox(
                  height: 20,
                ),
                _getCarousel(context),
                _getGenres(context),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Trending',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                _getTrending(context),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Trailer',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                _getTrailer(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

_getTrending(context) {
  return Container(
    height: 190,
    width: MediaQuery.of(context).size.width - 60,
    child: ListView.builder(
      padding: EdgeInsets.only(left: 10),
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return Container(
          width: 120,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(movies[index]), fit: BoxFit.cover)),
        );
      },
    ),
  );
}

_getTrailer(context) {
  return Container(
    height: 190,
    width: MediaQuery.of(context).size.width - 60,
    child: ListView.builder(
      padding: EdgeInsets.only(left: 10),
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return Container(
          width: 120,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(movies[movies.length - index - 1]),
                  fit: BoxFit.cover)),
        );
      },
    ),
  );
}

_getGenres(context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15),
    height: 50,
    width: MediaQuery.of(context).size.width - 60,
    child: ListView.builder(
      padding: EdgeInsets.only(left: 10),
      scrollDirection: Axis.horizontal,
      itemCount: genres.length,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.symmetric(horizontal: 15),
          color: Colors.red,
          child: Text(genres[index], style: TextStyle(color: Colors.white)),
        );
      },
    ),
  );
}

_getCarousel(context) {
  return Carousel(
    height: 350,
    width: MediaQuery.of(context).size.width - 60,
    type: 'slideswiper',
    showIndicator: false,
    axis: Axis.horizontal,
    children: List.generate(
      movies.length,
      (index) => Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(movies[index]), fit: BoxFit.cover),
          ),
        ),
      ),
    ),
  );
}

_getHeadTabs() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Films', style: TextStyle(fontWeight: FontWeight.w500)),
            SizedBox(
              height: 5,
            ),
            CircleAvatar(
              radius: 3,
              backgroundColor: Colors.red,
            )
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Text(
          'Series',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Text(
          'My List',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    ],
  );
}

_getNavBar() {
  return Container(
    width: 60,
    color: Colors.black,
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          child: Image.asset('assets/logo.png'),
        ),
        Expanded(
          child: Container(),
        ),
        _getMenuBtn(active: true, icon: Icons.home),
        _getMenuBtn(active: false, icon: Icons.search),
        _getMenuBtn(active: false, icon: Icons.slideshow),
        _getMenuBtn(active: false, icon: Icons.save_alt),
        _getMenuBtn(active: false, icon: Icons.menu),
      ],
    ),
  );
}

_getMenuBtn({bool active, IconData icon}) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        border: Border(
            right: BorderSide(
                color: active ? Colors.red : Colors.black, width: 3))),
    child: Icon(icon, color: active ? Colors.white : Colors.grey),
  );
}
