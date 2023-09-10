import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_flutter/screen/home_screen.dart';
import 'package:practice_flutter/screen/character_screen.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(
            child: HomeScreen()
        );
      }
    ),
    GoRoute(
      path: '/character',
      pageBuilder: (context, state) {
        return MaterialPage(
          child: CharacterScreen(characterName: state.extra as String)
        );
      }
    )
  ]
);