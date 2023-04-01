import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  int counter;
  SecondPage({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Тапшырма 2',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 50.0,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    "Сан: $counter",
                    style: const TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
