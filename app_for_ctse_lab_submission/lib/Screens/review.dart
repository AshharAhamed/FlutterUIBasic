import 'package:flutter/material.dart';
import '../Component/starDisplay.dart';

class MyApp2 extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reviews',
      home: ReviewScreen(title: 'Reviews'),
    );
  }
}

class ReviewScreen extends StatelessWidget {
  ReviewScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: null),
        backgroundColor: Colors.white,
        title: Text(
          "Reviews",
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Roboto",
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Reviews",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconTheme(
                          data: IconThemeData(
                            color: Colors.amber,
                            size: 25,
                          ),
                          child: new StarDisplay(value: 4),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "8 Reviews",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 18, top: 10, right: 18),
                  color: Colors.black26,
                  height: 1.35,
                  width: 380),
              Container(
                margin: const EdgeInsets.only(
                  top: 0,
                ),
                child: Row(
                  children: <Widget>[
                    _buildList(context),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildList(BuildContext context) => SizedBox(
        height: 563,
        width: 380,
        child: ListView(
//    scrollDirection: Axis.vertical,
//    shrinkWrap: true,
          children: ListTile.divideTiles(
              context: context,
              color: Colors.black,
              tiles: [
                _tile(
                    "01 Jan 2019",
                    "Item delivered in good condition. I will recomend to other buyer.\n\n"
                        "Very Recomended Item I love it very love it\n\n"
                        "Item delivered in good condition. I will recomend to other buyer.",
                    new DecorationImage(
                        image: AssetImage("assets/images/Shopping.jpg")),
                    4),
                _tile(
                    "01 Jan 2019",
                    "Item delivered in good condition. I will recomend to other buyer.\n\n",
                    new DecorationImage(
                        image: AssetImage("assets/images/image_5.jpg")),
                    4),
                _tile(
                    "01 Jan 2019",
                    "Item delivered in good condition. I will recomend to other buyer.\n\n",
                    new DecorationImage(
                        image: AssetImage("assets/images/image_6.jpg")),
                    4),
                _tile(
                    "01 Jan 2019",
                    "Item delivered in good condition. I will recomend to other buyer.\n\n",
                    new DecorationImage(
                        image: AssetImage("assets/images/image_7.jpg")),
                    4),
                _tile(
                    "01 Jan 2019",
                    "Item delivered in good condition. I will recomend to other buyer.\n\n",
                    new DecorationImage(
                        image: AssetImage("assets/images/image_8.jpg")),
                    4),
                _tile(
                    "01 Jan 2019",
                    "Item delivered in good condition. I will recomend to other buyer.\n\n",
                    new DecorationImage(
                        image: AssetImage("assets/images/image_10.png")),
                    4),
              ]).toList(),
        ),
      );

  ListTile _tile(String date, String comment, DecorationImage image, int val) =>
      ListTile(
          title: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                new IconTheme(
                                  data: IconThemeData(
                                    color: Colors.amber,
                                    size: 25,
                                  ),
                                  child: new StarDisplay(value: val),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  date,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          subtitle: Text(
            comment,
            style: TextStyle(fontSize: 15),
          ),
          leading: Column(
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(
                      left: 0.0, top: 0.0, bottom: 0.0, right: 0.0),
                  width: 45.0,
                  height: 45.0,
                  decoration:
                      new BoxDecoration(shape: BoxShape.circle, image: image)
              ),

            ],
          ));
}
