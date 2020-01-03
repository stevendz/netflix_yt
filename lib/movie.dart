import 'package:flutter/material.dart';
import 'package:netflix/main.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                color: Colors.black,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 50),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/logo.png')),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.red, width: 3)),
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
              Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: MediaQuery.of(context).size.width - 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/joker.jpg'))),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width - 60,
                    padding: EdgeInsets.only(top: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Joker',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500)),
                        Text('Horror . Action . Thriller',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 15),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    '2014',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.black87,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 15),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    '16+',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.black87,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 15),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    '1h 47min',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Icon(Icons.add, color: Colors.red),
                                  Text('My List',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.favorite_border,
                                      color: Colors.red),
                                  Text('Rate',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.share, color: Colors.red),
                                  Text('Share',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.save_alt, color: Colors.red),
                                  Text('Download',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                              'At vero eos et accusam et justo duo dol ores et ea rebum no sea takimata sanctus est Lorem ipsum dolor sit amet sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.'),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'MORE LIKE THIS',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.red,
                                height: 2,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: MediaQuery.of(context).size.height * 0.37,
                    width: MediaQuery.of(context).size.width - 60,
                    color: Colors.white,
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 1 / 1.435,
                      children: _getGridViewItems(context),
                    ),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            right: (MediaQuery.of(context).size.width - 60) / 2 - 20,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.red.withOpacity(0.5),
                ),
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
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

_getGridViewItems(context) {
  List<Widget> allWidgets = List<Widget>();

  for (int i = 0; i < movies.length; i++) {
    var widget = _getGridItem(context, i);
    allWidgets.add(widget);
  }
  return allWidgets;
}

_getGridItem(context, index) {
  return Container(
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(movies[index]))),
  );
}
