import 'src/constants/app_color.dart';
import 'src/screens/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat GPT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.scaffoldBg,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.card,
        ),
        cardColor: AppColor.card,
      ),
      home: const ChatScreen(),
    );
  }
}
