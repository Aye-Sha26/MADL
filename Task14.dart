import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TabBarDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Simple TabBar'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Chats', icon: Icon(Icons.chat)),
              Tab(text: 'Status', icon: Icon(Icons.info)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Chats Screen', style: TextStyle(fontSize: 24))),
            Center(child: Text('Status Screen', style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}
