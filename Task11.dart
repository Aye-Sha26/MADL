import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ImageGalleryDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class ImageGalleryDemo extends StatelessWidget {
  final List<Color> colors = [Colors.red, Colors.green, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Gallery'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(colors.length, (index) {
            return GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Image ${index + 1} tapped')),
                );
                print('Image ${index + 1} tapped');
              },
              child: Container(
                width: 100,
                height: 100,
                color: colors[index],
                alignment: Alignment.center,
                child: Icon(
                  Icons.image,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
