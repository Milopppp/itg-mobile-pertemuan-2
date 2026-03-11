import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Sederhana',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void tambah() {
    setState(() {
      count++;
    });
  }

  void kurang() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$count',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: count == 0 ? Colors.red : Colors.black87,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: tambah,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade50,
                  ),
                  child: const Text('Tambah'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: kurang,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade50,
                  ),
                  child: const Text('Kurang'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}