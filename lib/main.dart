import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'firstPage.dart';
//import 'imageBackground.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: HomePage(),
      routes: < String, WidgetBuilder > {
        "/a" : (BuildContext context) => NewPage("New Page"),
     }
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giuditta S.r.l."),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("busolinilorenzo@gmail,com"),
              accountName: Text("Lorenzo Busolni"),
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.white10,
              child: Text("L"),),
            ),
            ListTile(
              title: Text("Home Page"),
              trailing: Image.asset('assets/logo_piccolo.jpg', width: 35.0, height: 35.0,),
            ),
            ListTile(
              title: Text("Where we are"),
              trailing: Icon(Icons.room),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/a");
                },
            ),
            ListTile(
              title: Text("Contact Us"),
              trailing: Icon(Icons.chat),
            ),
            Divider(),
            ListTile(
              title: Text("Back"),
              trailing: Icon(Icons.arrow_back),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
