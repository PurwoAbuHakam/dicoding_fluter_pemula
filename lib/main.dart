import 'package:flutter/material.dart';
import './detail.dart';
import './profile.dart';

void main() {
  runApp(new MaterialApp(
    title: "ASEAN Country",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Container> aseanList = new List();
  var country = [
    {
      "name": "Indonesia",
      "flag": "indonesia.jpg",
      "capitalCity": "Jakarta",
      "population": "267.026.366",
      "currency": "Rupiah (IDR)",
      "desc":
          "Negara kepulauan terbesar yang memiliki lebih dari 16 ribu pulau. Negara Indonesia yang luasnya 1.904.569 km2 memiliki mata uang Rupiah dan lagu nasional Indonesia Raya ini merdeka pada tanggal 17 Agustus 1945 dan juga merupakan pendiri ASEAN"
    },
    {
      "name": "Brunei",
      "flag": "brunei.png",
      "capitalCity": "Bandar Seri Begawan",
      "population": "464.478",
      "currency": "Dolar Brunei (BND)",
      "desc":
          "Negara kerajaan islam ini memiliki lagu nasional Allah Peliharakan Sultan serta memiliki luas wilayah 5.765 km2. merdeka pada tanggal 1 Januari 1984 (dari Inggris) dan bergabung dengan ASEAN pada tanggal 7 Januari 1984"
    },
    {
      "name": "Filipina",
      "flag": "filipina.jpg",
      "capitalCity": "Manila",
      "population": "109.180.815",
      "currency": "Peso (PHP)",
      "desc":
          "Negara yang memiliki 2 bahasa nasional yaitu Filipino (Tagalog) dan Inggris ini memiliki luas wilayah 300.000 km2 dan lagu nasional Lupang Hinirang (Chosen Land), merdeka pada tanggal 12 Juni 1898 (dari Spanyol) dan juga salah satu negara pendiri ASEAN"
    },
    {
      "name": "Kamboja",
      "flag": "kamboja.jpg",
      "capitalCity": "Phnom Penh",
      "population": "16.926.984",
      "currency": "Riel Kamboja (KHR)",
      "desc":
          "Bahasa resmi Kamboja adalah Khmer dan mata uang Riel Kamboja memiliki lagu nasional Nokoreach (Royal Kingdom). Tanggal bergabung dengan ASEAN yaitu 16 Desember 1998"
    },
    {
      "name": "Laos",
      "flag": "laos.jpg",
      "capitalCity": "Vientiane",
      "population": "7.447.396",
      "currency": "Kip Laos (LAK)",
      "desc":
          "Dengan bahasa resmi Lao dan mata uang Kip Laos, negara ini memiliki lagu nasional Pheng Xat Lao (Hymn of the Lao People) dan bergabung dengan ASEAN pada tanggal 23 Juli 1997"
    },
    {
      "name": "Malaysia",
      "flag": "malaysia.jpg",
      "capitalCity": "Kuala Lumpur",
      "population": "32.652.083",
      "currency": "Ringgit (MYR)",
      "desc":
          "Negara dengan mata uang Ringgit ini memiliki luas wilayah 329.847 km2. Lagu nasional malaysia adalah Negaraku dan merdeka pada tanggal 31 Agustus 1957 (dari Inggris), malaysia juga merupakah salah satu negara pendiri ASEAN bersama negara lainnya"
    },
    {
      "name": "Myanmar",
      "flag": "myanmar.jpg",
      "capitalCity": "Rangoon (Yangon)",
      "population": "56.590.07",
      "currency": "Kyat Myanmar (MMK)",
      "desc":
          "Myanmar atau Burma memiliki lagu nasional Kaba Ma Kyei (Till the End of the World, Myanmar) dan mata uang Kyat Myanmar ini memiliki luas wilayah 676.578 km2, dan baru bergabung dengan ASEAN pada tanggal 23 Juli 1997"
    },
    {
      "name": "Singapura",
      "flag": "singapura.jpg",
      "capitalCity": "Singapura",
      "population": "6.209.660",
      "currency": "\$ Singapura (SGD)",
      "desc":
          "Singapura merupakan negara Asean dengan bahasa nasional paling banyak antara lain Inggris, Melayu, Mandarin dan Tamil. Dengan mata uang Dolar Singapura (SGD) dan lagu nasional Majulah Singapura, negara ini hanya memiliki luas 697 km2 dan merdeka pada tanggal 9 Agustus 1965 (dari Federasi Malaysia), singapura juga merupakan negara pendiri ASEAN"
    },
    {
      "name": "Thailand",
      "flag": "thailand.jpg",
      "capitalCity": "Bangkok",
      "population": "68.977.400",
      "currency": "Baht (THB)",
      "desc":
          "Negara di ASEAN yang tidak pernah dijajak negara lain ini memiliki luas wilayah 513.120 km2 dan lagu nasional Phleng Chat Thai (National Anthem of Thailand) serta mata uang Bath, thailand juga merupakan negara pendiri ASEAN"
    },
    {
      "name": "Vietnam",
      "flag": "vietnam.jpg",
      "capitalCity": "Hanoi",
      "population": "98.721.275",
      "currency": "Dong (VND)",
      "desc":
          "Memiliki luas wilayah 331.210 km2 dan mata uang Dong serta lagu nasional Tien quan ca (The Song of the Marching Troops), Vietnam bergabung dengan ASEAN pada tanggal 28 Juli 1995 dan hari kemerdekaan 2 September 1945 (dari Prancis)"
    },
  ];

  _generateList() async {
    for (var i = 0; i < country.length; i++) {
      final aseanCountry = country[i];
      final String flag = aseanCountry["flag"];
      aseanList.add(new Container(
        padding: new EdgeInsets.all(10.0),
        child: new GestureDetector(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new Detail(
                    name: aseanCountry["name"],
                    flag: flag,
                    capital: aseanCountry["capitalCity"],
                    population: aseanCountry["population"],
                    currency: aseanCountry["currency"],
                    desc: aseanCountry["desc"],
                  ))),
          child: new Card(
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  "images/$flag",
                  fit: BoxFit.cover,
                ),
                new Padding(padding: new EdgeInsets.all(10.0)),
                new Text(
                  aseanCountry["name"],
                  style: new TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _generateList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ASEAN Country"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.account_circle),
              color: Colors.blue[50],
              onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Profile())))
        ],
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: aseanList,
      ),
    );
  }
}
