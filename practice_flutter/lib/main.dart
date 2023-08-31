import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Practice'),
        ),
        body: const Center(
          child: ListTile(
            title: Text("山田 太郎"),
            subtitle: Text("やまだ たろう"),
            leading: Icon(Icons.face_6),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
