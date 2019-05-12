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
  String title1 = 'หมอสันต์';
  String title2 = 'Visitdrsant.blogspot.com';

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
              'หมอสันต์',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('ตอบปัญหาสุขภาพ'),
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
              'โภชนาการ',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('ตอบปัญหาสุขภาพ'),
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
              'ออกกำลังกาย',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('ตอบปัญหาสุขภาพ'),
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
              'จัดการความเครียด',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('ตอบปัญหาสุขภาพ'),
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
              'Wellness Wecare',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('แคมป์สุขภาพ'),
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
              'นพ.สันต์ ใจยอดศิลป์ พบ. Cert.Cardiovascular & Thoracic Surgery (GLH, NZ) วว.ศัลย์หัวใจหลอดเลือดและทรวงอก อว.เวชศาสตร์ครอบครัว, อดีตเป็นศัลยแพทย์หัวใจที่ต่อมาหันมาสนใจเวชศาสตร์ครอบครัว เคยทำงานบริหารเป็นผู้อำนวยการรพ.พญาไท2 อยู่ 6 ปี ตอนนี้เกษียณแล้วและไปตั้ง Wellness We care Center ที่อ.มวกเหล็ก เปิดแค้มป์สุขภาพ สอนให้คนมีสุขภาพดีด้วยตัวเอง (GHBY) และสอนคนที่ป่วยแล้วให้พลิกผันโรคด้วยตัวเอง(RDBY) ด้วย (1) โภชนาการที่มีพืชเป็นอาหารหลัก (2) การออกกำลังกาย (3) การจัดการความเครียดอย่างเป็นระบบ และ (4) การเข้ากลุ่มเพื่อนช่วยเพื่อน ทำงานจิตอาสาคือช่วยมูลนิธิสอนช่วยชีวิต มูลนิธิช่วยผ่าตัดหัวใจเด็ก และเป็นที่ปรึกษาให้กับรพ.มวกเหล็กด้วย มีงานอดิเรกทำสวนปลูกผักปลูกดอกไม้ เคยทำ "ไร่หมอสันต์เกษตรอินทรีย์" แล้วเลิกไปเพราะเงินหมด ตอนนี้หลงเชื่อเพื่อนและไปเริ่มทำฟาร์มใหม่อีกแล้วที่มวกเหล็ก ชื่อ Nature We Care Farm แบบว่า "..ไปโดนเขาหลอกอีกแล้ว น้องแก้วไม่เข็ด" แต่คราวนี้หมอสันต์มั่นใจว่าทำได้ยั่งยืนแน่นอนเพราะเพื่อนเป็นคนออกเงิน บล็อกนี้เป็นการสื่อสารแบบวันเวย์คือหมอสันต์เขียนมาข้างเดียว ท่านที่มีคำถามสุขภาพกรุณาส่่งไปให้หมอสันต์ทางอีเมลที่ chaiyodsilp@gmail.com โดยต้องออกตัวก่อนว่าหมอสันต์ไม่มีปัญญาตอบเมล์ได้หมดดอก แต่จะพยายามตอบคำถามที่ไม่ซ้ำกับของคนอื่นทุกเมล์'),
        ),
        Container(
          margin: EdgeInsets.all(30.0),
          child: Image.asset('images/bannerflutter.jpg'),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Text(
              'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์'),
        ),Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Text(
              'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หมอสันต์'),
      ),
      body: Container(
        child: showContent(),
      ),
      drawer: menuDrawer(context),
    );
  }
}
