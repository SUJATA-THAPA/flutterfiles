import 'package:flutter/material.dart';

void main() {
  runApp(const ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ScoreApp",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void Decreasnumber() {
    setState(() {
      number--;
    });
  }

   void Resetnumber() {
    setState(() {
      number=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Resetnumber,
        child: const Icon(Icons.restore_outlined),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          const Center(
              child: Text("Score is",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.bold))),
          const SizedBox(
            height: 14,
          ),
          Center(
              child: Text(number.toString(),
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 85,
                      fontWeight: FontWeight.bold))),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: increaseNumber,
                child: const Text(
                  'Increase',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: Decreasnumber,
                child: const Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
