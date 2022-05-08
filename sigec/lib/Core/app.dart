import 'package:flutter/material.dart';

import '../Modules/Pages/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.indigo.shade900,
      ),
      home: const HomePage(),
    );
  }
}