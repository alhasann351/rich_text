import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Rich Text'),
      ),
      body: RichText(
        text: const TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
          children: [
            TextSpan(text: 'Flutter '),
            TextSpan(
              text: 'Apps ',
              style: TextStyle(
                fontSize: 27,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'Development ',
              style: TextStyle(
                fontSize: 25,
                color: Colors.redAccent,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
