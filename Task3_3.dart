import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ActionButtonsPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ActionButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Action Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.call, color: Colors.green, size: 30),
              onPressed: () {
                print('Call button pressed');
              },
            ),
            IconButton(
              icon: Icon(Icons.message, color: Colors.blue, size: 30),
              onPressed: () {
                print('Message button pressed');
              },
            ),
            IconButton(
              icon: Icon(Icons.email, color: Colors.red, size: 30),
              onPressed: () {
                print('Email button pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
