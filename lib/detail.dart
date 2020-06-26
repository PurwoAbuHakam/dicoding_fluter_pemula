import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail(
      {this.name,
      this.flag,
      this.capital,
      this.population,
      this.currency,
      this.desc});
  final String name;
  final String flag;
  final String capital;
  final String population;
  final String currency;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: new AppBar(
        title: new Text("Detail $name"),
      ),
      body: new Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            new Image.asset(
              "images/$flag",
              fit: BoxFit.cover,
            ),
            new Padding(padding: new EdgeInsets.all(10.0)),
            new IconDetailSection(
              capital: capital,
              population: population,
              currency: currency,
            ),
            new DescriptionSection(
              desc: desc,
            ),
          ],
        ),
      ),
    );
  }
}

class IconDetailSection extends StatelessWidget {
  IconDetailSection({this.capital, this.population, this.currency});
  final String capital;
  final String population;
  final String currency;
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(children: <Widget>[
        new IconDetail(
          icon: Icons.location_on,
          notes: capital,
        ),
        new IconDetail(
          icon: Icons.people,
          notes: "$population Jiwa",
        ),
        new IconDetail(
          icon: Icons.attach_money,
          notes: currency,
        ),
      ]),
    );
  }
}

class IconDetail extends StatelessWidget {
  IconDetail({this.icon, this.notes});
  final IconData icon;
  final String notes;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(icon, size: 50.0, color: Colors.blue),
          new Text(
            notes,
            style: new TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  DescriptionSection({this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: new Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text(
            desc,
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
