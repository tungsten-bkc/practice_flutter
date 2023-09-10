import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_flutter/const/character.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Practice'),
      ),
      body: ListView.builder(
        itemCount: Character.characters.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: () {
                context.push('/character', extra: '${Character.characters[index]['name']}');
              },
              leading: const Icon(Icons.face_6),
              title: Text(
                '${Character.characters[index]['name']}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}