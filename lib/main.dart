import 'package:flutter/material.dart';
import 'package:pop_showdialog_willpopscope/app_home.dart';
import 'package:pop_showdialog_willpopscope/app_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Info.id: (context) => const Info(),
        Home.id: (context) => const Home(),
      },
      home: const Info(),
    );
  }
}
