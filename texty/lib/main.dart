import 'package:flutter/material.dart';
import 'package:texty/screens/welcome_screen.dart';
import 'package:texty/screens/login_screen.dart';
import 'package:texty/screens/registration_screen.dart';
import 'package:texty/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.welcomeId,
      routes: {
        WelcomeScreen.welcomeId: (context) => WelcomeScreen(),
        ChatScreen.Id: (context) => ChatScreen(),
        LoginScreen.Id: (context) => LoginScreen(),
        RegistrationScreen.Id: (context) => RegistrationScreen(),
      },
    );
  }
}
