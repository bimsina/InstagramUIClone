import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    leading: Icon(
      Icons.camera_alt,
    ),
    centerTitle: true,
    title: SizedBox(
      height: 35.0,
      //child: Text('Instagram',style: TextStyle(fontFamily: 'Billabong',color: Colors.black),),
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      Icon(Icons.live_tv),
      Padding(
        padding: EdgeInsets.only(right: 8.0, left: 8.0),
        child: Icon(Icons.send),
      ),
    ],
  );

  final bottomNav = Container(
    color: Colors.white,
    height: 50.0,
    alignment: Alignment.center,
    child: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.add_box),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: null,
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      bottomNavigationBar: bottomNav,
      body:InstaBody(),
    );
  }
}
