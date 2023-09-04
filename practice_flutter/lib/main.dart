import 'package:flutter/material.dart';
import 'package:practice_flutter/const/charactor.dart';

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
        body: ListView.builder(
            itemCount: Charactor.characters.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(
                    Charactor.characters[index]['name'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  leading: const Icon(Icons.face_6),
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
