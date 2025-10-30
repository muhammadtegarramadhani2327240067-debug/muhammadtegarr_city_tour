import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City Tour"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.network(
                    'https://picsum.photos/id/162/300/200',
                    height: 300,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8),
                  Image.network(
                    'https://picsum.photos/id/164/300/200',
                    height: 300,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8),
                  Image.network(
                    'https://picsum.photos/id/174/300/200',
                    height: 300,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
