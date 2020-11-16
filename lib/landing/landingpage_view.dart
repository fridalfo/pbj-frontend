import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/TabItem.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:pbj_app/constant.dart';
import 'package:pbj_app/screen/account_screen.dart';
import 'package:pbj_app/screen/home_screen.dart';
import 'package:pbj_app/screen/notification_screen.dart';

class LandingPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Motion Tab Bar Sample',
        theme: ThemeData(
    primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Motion Tab Bar Sample'),
      );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  MotionTabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        bottomNavigationBar: MotionTabBar(
          labels: [
            "Notifikasi","Home","Akun"
          ],
          initialSelectedTab: "Home",
          tabIconColor: PbjAppPalette.grey,
          tabSelectedColor: PbjAppPalette.blue,
          onTabItemSelected: (int value){
            print(value);
            setState(() {
              _tabController.index = value;
            });
            
          },
          icons: [
            Icons.mail,Icons.home,Icons.person
          ],
          textStyle: TextStyle(color: PbjAppPalette.blue),
        ),
        body: MotionTabBarView(
          controller: _tabController,
          children: <Widget>[
            NotificationPage(),
            HomePage(),
            AccountPage()
          ],
        )
    );
  }
}