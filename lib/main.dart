import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final items=<Widget>[
    Icon(Icons.settings, size: 20,),
    Icon(Icons.edit_document, size: 20 ),
  ];
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(" navar navigation"),
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items
      ),
    );
  }
}

