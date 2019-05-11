import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title1 = 'มาสเตอร์กุ้ง';
  String title2 = 'www.gkrgroup.co.th';

  Widget showTitle() {
    return Text(
      title1,
      style: TextStyle(color: Colors.white),
    );
  }

  Widget showSubTitle() {
    return Text(
      title2,
      style: TextStyle(
          color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
    );
  }

  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  Widget menuDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue[700]),
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
            leading: Icon(Icons.home, color: Colors.green[300],),
            title: Text('Home', style: TextStyle(fontSize: 18.0),),
          ),
          ListTile(
            leading: Icon(Icons.android),
            title: Text('แอนดรอย์', style: TextStyle(fontSize: 18.0),),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: showTitle(),
      ),
      body: Text('This is body'),
      drawer: menuDrawer(context),
    );
  }
}
