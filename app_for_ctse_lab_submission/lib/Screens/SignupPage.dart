import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reviews',
      home: FullScreenPage(/*title: 'Reviews'*/),
    );
  }
}

class FullScreenPage extends StatelessWidget {
//  FullScreenPage({Key key, this.title}) : super(key: key);
//  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/image_4.jpg"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.softLight),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 80, left: 50, right: 50),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Treva Shop",
                          style: new TextStyle(
                              fontSize: 50.0,
                              fontFamily: "Roboto",
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 215),
                  height: 1.75,
                  color: Colors.white70,
                  width: 115,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Get best product in Treva Shop",
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: "Roboto",
                            color: Colors.white70),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: RaisedButton(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 25, fontFamily: "Roboto", color: Colors.white),
                    ),
                    padding: EdgeInsets.fromLTRB(120, 13, 120, 13),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color: Colors.white70,
                        )),
                    disabledColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          color: Colors.white70,
                          height: 1.35,
                          width: 70,
                        )
                      ]),
                      Column(children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "OR SKIP",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Roboto",
                                    color: Colors.white70),
                              )
                            ],
                          ),
                        )
                      ]),
                      Column(children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 18),
                          color: Colors.white70,
                          height: 1.35,
                          width: 70,
                        )
                      ]),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: RaisedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 25, fontFamily: "Roboto", color: Colors.white),
                    ),
                    padding: EdgeInsets.fromLTRB(135, 13, 135, 13),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color: Colors.white70,
                        )),
                    disabledColor: Colors.transparent,
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}