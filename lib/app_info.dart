import 'package:flutter/material.dart';
import 'package:pop_showdialog_willpopscope/app_home.dart';

class Info extends StatefulWidget {
  static const id = 'info';
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Assalomu aleykum'),
            const SizedBox(height: 30.0),
            IconButton(
                onPressed: (() {
                  Navigator.of(context).pushNamed(Home.id);
                }),
                icon: const Icon(Icons.home))
          ],
        ),
      ),
    );
  }
}
