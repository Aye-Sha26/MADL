import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ColorToggler(),
    debugShowCheckedModeBanner: false,
  ));
}

class ColorToggler extends StatefulWidget {
  @override
  _ColorTogglerState createState() => _ColorTogglerState();
}

class _ColorTogglerState extends State<ColorToggler> {
  Color _backgroundColor = Colors.white;

  void _toggleColor() {
    setState(() {
      _backgroundColor =
          _backgroundColor == Colors.white ? Colors.blue : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text('Color Toggler'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Tap the button to toggle color',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleColor,
        child: Icon(Icons.color_lens),
      ),
    );
  }
}
