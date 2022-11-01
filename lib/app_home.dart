import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pop_showdialog_willpopscope/app_info.dart';

class Home extends StatefulWidget {
  static const id = "home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool tap1 = false;
  bool tap2 = false;

  FutureOr<bool>? get value => null;

  @override
  void initState() {
    tap1 = false;
    tap2 = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (tap1 == true && tap2 == true) {
          bool value = await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('hamma Amalarni bajardingiz'),
                actions: [
                  IconButton(
                    onPressed: (() {
                      Navigator.of(context).pushNamed(Info.id);
                    }),
                    icon: const Icon(Icons.home),
                  )
                ],
              );
            },
          );
        } else {
          Navigator.of(context).pop();
        }

        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (() {
                  tap1 = true;
                  setState(() {});
                }),
                child: const Text('one tap'),
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: (() {
                  tap2 = true;
                  setState(() {});
                }),
                child: const Text('two tap'),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
