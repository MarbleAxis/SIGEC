import 'package:flutter/material.dart';
import '../Modules/login/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIGEC',
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 3, 8, 58),
      ),
      home: const LoginPage(),
    );
  }
}