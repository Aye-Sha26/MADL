import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AnimatedContainerDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  double _width = 100;
  double _height = 100;

  void _changeSize() {
    setState(() {
      // Toggle between 100 and 200 for width and height
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: Colors.indigo,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          alignment: Alignment.center,
          child: Text(
            'Tap Button!',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeSize,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
