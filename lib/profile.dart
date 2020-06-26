import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Profile")),
      body: Center(
        child: new Container(
          child: Column(children: <Widget>[
            new Image.asset("images/purwoavatar.png"),
            new Padding(padding: EdgeInsets.all(5.0)),
            new Text(
              "Purwo Herbi Dartanto",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            new Padding(padding: EdgeInsets.all(5.0)),
            new Text(
              "purwo.herbidartanto@gmail.com",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            new Padding(padding: EdgeInsets.all(5.0)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "Halo Perkenalkan nama saya Purwo, saya saat ini berusia 27 tahun dan bekerja sebagai developer, salam kenal",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
