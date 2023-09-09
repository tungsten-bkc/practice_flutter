import 'package:flutter/material.dart';
import 'package:practice_flutter/const/character.dart';
import 'package:practice_flutter/character_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
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
                //指定した画面に遷移する
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CharacterScreen(characterName: Character.characters[index]['name'])),
                );
              },
              leading: Icon(Icons.face_6),
              title: Text(
                '${Character.characters[index]['name']}',
                style: TextStyle(
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