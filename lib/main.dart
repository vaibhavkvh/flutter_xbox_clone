import 'package:flutter/material.dart';
import 'package:inerior_design/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selected_index=0;
  static List<Widget> _pages = <Widget>[
    HomePage( index: 0,),
    HomePage( index: 1,),
    HomePage( index: 2,),
    HomePage( index: 3,),
    HomePage( index: 4,)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: _pages.elementAt(_selected_index),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selected_index,
        onTap:_onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.black),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline, color: Colors.black),
              label: "Social"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined, color: Colors.black),
              label: "My Library"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, color: Colors.black),
              label: "Profile")
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onItemTapped(int index){
    setState(() {
      _selected_index = index;
    });
  }
}
