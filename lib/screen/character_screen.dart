import 'package:flutter/material.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({Key? key, required this.characterName}) :super(key: key);
  final String characterName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            characterName
        ),
      ),
      body: Center(
        child: Text(
            characterName
        ),
      ),
    );
  }
}