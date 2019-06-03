import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'services/repository.dart';

void main() {
  PlayerRepository _playerRepository = PlayerRepository();
  runApp(MyApp(
    playerRepository: _playerRepository,
  ));
}

class MyApp extends StatelessWidget {
  final PlayerRepository playerRepository;
  MyApp({this.playerRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Block Implementation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        playerRepository: playerRepository,
      ),
    );
  }
}
