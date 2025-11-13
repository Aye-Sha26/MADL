import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: JsonListScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class JsonListScreen extends StatelessWidget {
  // Local JSON string
  final String jsonString = '[{"name":"Apple"},{"name":"Banana"},{"name":"Orange"},{"name":"Mango"}]';

  @override
  Widget build(BuildContext context) {
    // Decode JSON string into a list
    List<dynamic> fruits = json.decode(jsonString);

    return Scaffold(
      appBar: AppBar(
        title: Text('Fruits from JSON'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.local_florist, color: Colors.green),
            title: Text(fruits[index]['name']),
          );
        },
      ),
    );
  }
}
