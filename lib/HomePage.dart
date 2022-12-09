import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final int index;

  HomePage({required this.index});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(index: index,),
    );
  }

}

class Page extends StatefulWidget {
  final int index;

  Page({super.key, required this.index});

  @override
  State<StatefulWidget> createState() {

    return _PageImplementation();
  }

}

class _PageImplementation extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('tab at ${widget.index}',textAlign: TextAlign.center),);
  }

}