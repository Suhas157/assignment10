import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _scafoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(
        child: Icon(Icons.cloud_circle, size: 64, color: Colors.teal),
      ),
      const Center(
        child: Icon(Icons.account_circle, size: 64, color: Colors.teal),
      ),
      const Center(
        child: Icon(Icons.adb, size: 64, color: Colors.teal),
      ),
    ];
    final _kTabs = <Tab>[
      const Tab(
        icon: Icon(
          Icons.ac_unit_outlined,
          color: Color(0xffF0FFF0),
        ),
        text: 'Tab1',
      ),
      const Tab(
          icon: Icon(
            Icons.ac_unit_outlined,
            color: Color(0xffF0FFF0),
          ),
          text: 'Tab2'),
      const Tab(
          icon: Icon(
            Icons.ac_unit_outlined,
            color: Color(0xffF0FFF0),
          ),
          text: 'Tab3'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        key: _scafoldkey,
        appBar: AppBar(
          title: Text('AppBar Demo'),
          centerTitle: true,
          elevation: 10,
          actions: [
            Icon(Icons.notifications),
            Icon(Icons.access_alarms),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xff0F2027), Color(0xff2C5364)],
            )),
          ),
          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
        drawer: Drawer(

          child: Container(
            color: Color(0xff2C5364),
            child: ListView(
              children: [
                const SizedBox(height: 40),
                Container(
                  child: ElevatedButton(
                    child: new Text('Close Drawer'),
                    // color: Colors.lightGreen,
                    onPressed: () {
                      _scafoldkey.currentState?.openEndDrawer();
                      print('clicked');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
