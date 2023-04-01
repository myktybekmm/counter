import 'package:flutter/material.dart';
import 'package:tapshyrma2/secondPage.dart';

// импорт бул бардык флаттерге тиешелуу нерселерди озуно камтыйт
// voit: бул эч нерсе кайтарбайт
//main: негизги функция
//(): фунуциянын функция экенин билдирет
//{}: функциянын денеси
void main() => runApp(const MyApp());
// рunApp сиздин тиркеменизди баштоо функциясы ал ичине виджет алат
//MyApp() класс же виджеттин аталышы

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First app",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Тапшырма 1',
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
          const SizedBox(
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Icon(Icons.remove),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(
                            counter: counter,
                          )),
                );
              },
              icon: const Icon(Icons.skip_next))
        ],
      ),
    );
  }
}
