import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DraggableDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color targetColor = Colors.grey[300]!; // Initial color of DragTarget
  String targetText = 'Drop Here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable Demo'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Draggable<String>(
              data: 'Dropped!',
              child: Container(
                width: 120,
                height: 120,
                color: Colors.indigo,
                alignment: Alignment.center,
                child: Text(
                  'Drag me',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              feedback: Container(
                width: 120,
                height: 120,
                color: Colors.indigo.withOpacity(0.5),
                alignment: Alignment.center,
                child: Text(
                  'Drag me',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          DragTarget<String>(
            onAccept: (data) {
              setState(() {
                targetColor = Colors.green;
                targetText = data;
              });
            },
            builder: (context, candidateData, rejectedData) {
              return Container(
                width: 150,
                height: 150,
                color: targetColor,
                alignment: Alignment.center,
                child: Text(
                  targetText,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
