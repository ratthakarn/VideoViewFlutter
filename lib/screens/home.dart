import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title1 = 'มาสเตอร์กุ้ง';
  String title2 = 'www.gkrgroup.co.th';

  static String url = "https://www.youtube.com/playlist?list=PLC3bWXzQFIW1rN-oHGbo7W7jn1IB37CpG";
  final objWebView = FlutterWebviewPlugin();
  TextEditingController textEditingController =
      TextEditingController(text: url);

  @override
  void initstate() {
    super.initState();

    objWebView.close();
    textEditingController.addListener(() {});
  }

  @override
  void dispose() {
    objWebView.dispose();
    textEditingController.dispose();
    super.dispose();
  }

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
            leading: Icon(
              Icons.home,
              color: Colors.green[300],
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          ListTile(
            leading: Icon(Icons.android),
            title: Text(
              'แอนดรอย์',
              style: TextStyle(fontSize: 18.0),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: showTitle(),
      ),url: url,
      withJavascript: true,
      withLocalStorage: true,
      withZoom: true,
    );
  }
}
