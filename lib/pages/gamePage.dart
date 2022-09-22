//hello world please
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Game Page'),
        ),
        body: const Center(
          child: Text('coucou'),
        ));
  }
}

// class _GamePageState extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Game Page'),
//         ),
//         body: const Center(
//           child: Text('coucou'),
//         ));
//   }
// }
