import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tellyou/ui/home/screen.dart';

void main() {
  runApp(const ProviderScope(child: TellYouApp()));
}

class TellYouApp extends StatelessWidget {
  const TellYouApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TellYou',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
