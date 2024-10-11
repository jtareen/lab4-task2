import 'package:flutter/material.dart';
import 'package:lab4_task2/screens/signin_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SignInPage());
  }
}
