import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FadeInDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class FadeInDemo extends StatefulWidget {
  @override
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    // Delay of 1 second before showing the widget
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade-In Animation'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(seconds: 1),
          child: Text(
            'Welcome!',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.indigo),
          ),
        ),
      ),
    );
  }
}
