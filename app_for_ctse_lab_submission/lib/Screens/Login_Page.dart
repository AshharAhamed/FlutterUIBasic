import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Component/fb_icon_for_flutter_icons.dart';
import '../Component/custom_icon_icons.dart';

class MyApp3 extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reviews',
      home: LoginScreen(/*title: 'Reviews'*/),
    );
  }
}

class LoginScreen extends StatelessWidget {
//  FullScreenPage({Key key, this.title}) : super(key: key);
//  final String title;
//   DecorationImage image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,

        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/image_12.jpg"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.softLight),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 90, left: 25, right: 50),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: new BoxDecoration(shape: BoxShape.circle, image: new DecorationImage(image: AssetImage("assets/images/Treva_Icon.jpg"))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 15
                          ),
                            child: Text("Treva Shop",
                          style: new TextStyle(
                              fontSize: 30.0,
                              fontFamily: "Roboto",
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ))
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 85),
                  width: 340,
                  child: RaisedButton(
                    color: Colors.lightBlue,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            right: 10
                          ),
                          child: Icon(FbIconForFlutter.facebook, size: 28, color: Colors.black87,),
                        ),
                        Text("Login With Facebook", style: TextStyle(fontSize: 16, fontFamily: "Roboto", color: Colors.white),textAlign: TextAlign.center,),
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(75, 13, 75, 13),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.white70,)
                    ),
                    disabledColor: Colors.indigoAccent,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 340,
                  child: RaisedButton(
                    color: Colors.lightBlue,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                              right: 10
                          ),
                          child: Icon(CustomIcon.search, size: 28, color: Colors.lightBlue,),
                        ),
                        Text("Login With Google", style: TextStyle(fontSize: 16, fontFamily: "Roboto", color: Colors.black54),textAlign: TextAlign.center,),
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(75, 13, 75, 13),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.white70,)
                    ),
                    disabledColor: Colors.white,
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
                                "OR",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Roboto",
                                    color: Colors.white70),
                              )
                            ],
                          ),
                        )
                      ]
                      ),
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
                  width: 340,
                  child: TextField(
                    obscureText: true,
                    enabled: true,
//                    style: ,
//                    focusNode: FocusNode(canRequestFocus: false, skipTraversal: false),
                    decoration: InputDecoration(

//                    icon: Icon(Icons.email),
                      labelText: 'Email',
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white70),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
//                        disabledColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10
                  ),
                  width: 340,
                  child: TextField(
                    obscureText: true,
                    enabled: true,
//                    style: ,
//                    focusNode: FocusNode(canRequestFocus: false, skipTraversal: false),
                    decoration: new InputDecoration(
//                    icon: Icon(Icons.email),
                      labelText: 'Password',
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white70),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
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
                    disabledColor: Colors.lightBlue,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(
                        top: 5,
                        left: 15
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                        child: Text("Not Have Account?",
                        style: new TextStyle(
                          fontSize: 15.0,
                          fontFamily: "Roboto",
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    )
                    ),Container(
                            child: Text(" Sign Up",
                              style: new TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: "Roboto",
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            )
                        )
                    ],
                    )
                )
              ],
            )
          ],
        )
    );
  }
}
