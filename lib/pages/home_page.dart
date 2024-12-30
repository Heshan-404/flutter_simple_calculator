import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int answer = 0;
  int firstInput = 0;
  int secondInput = 0;
  void add() {
    setState(() {
      answer = firstInput + secondInput; 
    });
  }

  void minus() {
    setState(() {
      answer = firstInput - secondInput;
    });
  }

  void devition() {
    if (firstInput != 0) {
      setState(() {
        answer = firstInput ~/ secondInput;
      });
    }
  }

  void multiply() {
    setState(() {
      answer = firstInput * secondInput;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Simple Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextField(
                  onChanged: (value) {
                    firstInput = int.parse(value);
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter Number",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  onChanged: (value) {
                    secondInput = int.parse(value);
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter Number",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  answer.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  onPressed: add,
                  child: const Text("+"),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  onPressed: minus,
                  child: const Text("--"),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  onPressed: multiply,
                  child: const Text("X"),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  onPressed: devition,
                  child: const Text("/"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
