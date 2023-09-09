import 'package:flutter/material.dart';

class CharacterScreen extends StatelessWidget {
  CharacterScreen({required this.characterName});
  final String characterName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            characterName
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
              characterName
          ),
        ),
      ),
    );
  }
}