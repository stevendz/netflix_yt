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
          Container(
            width: 60,
            color: Colors.black,
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                  child: Image.asset('assets/logo.png'),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border:
                        Border(right: BorderSide(color: Colors.red, width: 3)),
                  ),
                  child: Icon(Icons.home, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Colors.black, width: 3)),
                  ),
                  child: Icon(Icons.search, color: Colors.grey),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Colors.black, width: 3)),
                  ),
                  child: Icon(Icons.slideshow, color: Colors.grey),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Colors.black, width: 3)),
                  ),
                  child: Icon(Icons.save_alt, color: Colors.grey),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Colors.black, width: 3)),
                  ),
                  child: Icon(Icons.menu, color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width - 60,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Films',
                            style: TextStyle(fontWeight: FontWeight.w500)),
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
                    child: Text('Series',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Text('My list',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Carousel(
                  height: 350.0,
                  width: MediaQuery.of(context).size.width - 60,
                  type: "slideswiper",
                  showIndicator: false,
                  arrowColor: Colors.white,
                  axis: Axis.horizontal,
                  showArrow: false,
                  children: List.generate(
                    movies.length,
                    (index) => Center(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => MoviePage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(movies[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
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
                        child: Text(
                          genres[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Trending',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                Container(
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
                            image: AssetImage(movies[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Trailer',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                Container(
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
                          color: Colors.grey.shade300,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage(movies[movies.length - index - 1]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
