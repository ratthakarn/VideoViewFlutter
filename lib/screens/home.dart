import 'package:flutter/material.dart';
import 'menu1.dart';
import 'menu2.dart';
import 'menu3.dart';
import 'menu4.dart';
import 'menu5.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title1 = 'GKRGROUP';
  String title2 = 'บริษัท จี.เค.อาร์.กรุ๊ป จำกัด';

  Widget showTitle() {
    return Text(
      title1,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget showSubTitle() {
    return Text(title2);
  }

  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  Widget menuDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.green[300]),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 80.0,
                    width: 100.0,
                    child: showLogo(),
                  ),
                  showTitle(),
                  showSubTitle()
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.green[900],
              size: 48.0,
            ),
            title: Text(
              'GKRSHOP',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('ร้านค้า'),
            onTap: () {
              Navigator.of(context).pop();
              var menu1Route =
                  MaterialPageRoute(builder: (BuildContext context) => Menu1());
              Navigator.of(context).push(menu1Route);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.featured_video,
              color: Colors.green[900],size: 48.0,
            ),
            title: Text(
              'RME',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เวปไซด์'),
            onTap: () {
              Navigator.of(context).pop();
              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu2());
              Navigator.of(context).push(menuRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.face,
              color: Colors.green[900],size: 48.0,
            ),
            title: Text(
              'STUDIOLOGIC',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เวปไซด์'),
            onTap: () {
              Navigator.of(context).pop();
              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu3());
              Navigator.of(context).push(menuRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.green[900],size: 48.0,
            ),
            title: Text(
              'GKR CHANNEL',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('ช่องวีดีโอ '),
            onTap: () {
              Navigator.of(context).pop();
              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu4());
              Navigator.of(context).push(menuRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.satellite,
              color: Colors.green[900],size: 48.0,
            ),
            title: Text(
              'GKRGROUP ',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เวปไซด์'),
            onTap: () {
              Navigator.of(context).pop();
              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu5());
              Navigator.of(context).push(menuRoute);
            },
          )
        ],
      ),
    );
  }

  Widget showContent() {
    return ListView(
      children: <Widget>[
        Container(
          height: 150.0,
          child: Image.asset('images/logo.png'),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Text(
              'บริษัท จี.เค.อาร์.กรุ๊ป จำกัด จำหน่ายอุปกรณ์บันทึกภาพและเสียง ผลิตสื่อ '),
        ),
        Container(
          margin: EdgeInsets.all(30.0),
          child: Image.asset('images/bannerflutter.jpg'),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Text(
            'บริการทำดนตรีประกอบละคร เพลงโฆษณา'),
        ),Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Text(
              'บริการถ่ายทำวีดีโอ'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GKRGROUP'),
      ),
      body: Container(
        child: showContent(),
      ),
      drawer: menuDrawer(context),
    );
  }
}
