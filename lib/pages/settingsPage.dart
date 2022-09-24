//hello world please
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('settings'),
    ));
  }
}

// class _ extends StatefulWidget {
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
