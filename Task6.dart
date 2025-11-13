import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ItemListScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class ItemListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Items'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10, // Number of items
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
            ),
            title: Text('Item ${index + 1}'),
            subtitle: Text('This is item number ${index + 1}'),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
