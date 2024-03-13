import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      home: Bar(),
    );
  }
}

//this class contains the top bar and the bottom bar
class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Bar Screen'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.settings),
          tooltip: 'Settings',
          onPressed: () {
            // open settings screen
          },
        ),
      ],
    ),
    // bottomNavigationBar: const BottomAppBar(


    // ), 
    bottomNavigationBar: const BottomBar(),
    );
  }
}

//bottom bar code
class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {
              // open settings screen
            },
          ),
          IconButton(
            icon: const Icon(Icons.insights),
            tooltip: 'Stats',
            onPressed: () {
              // open stats screen
            },
          ),
          IconButton(
            icon: const Icon(Icons.book),
            tooltip: 'tips',
            onPressed: () {
              // open tips screen
            },
          ),
        ],
      ),
    );
  }
}
