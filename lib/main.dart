import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final items = ['山田 太郎'];
  final subItems = ['やまだ たろう'];

  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Practice'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return Container(
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: ListTile(
              leading: Icon(Icons.face_6),
              title: Text('${items[index]}'),
              subtitle: Text('${subItems[index]}'),
            ),
          );
        },
      ),
    );
  }
}
