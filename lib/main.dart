import 'package:flutter/material.dart';
import 'package:flutter_application_02_yesnomaybe_app/config/theme/app_theme.dart';
import 'package:flutter_application_02_yesnomaybe_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 1).theme(),
      home: const ChatScreen()
    );
  }
}