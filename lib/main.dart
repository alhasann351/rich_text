import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
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
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 30,
                color: Colors.amber,
              ),
              children: [
                const TextSpan(text: 'Hello '),
                TextSpan(
                  text: 'Flutter ',
                  style: GoogleFonts.amaranth(
                    fontSize: 32,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: 'Developer',
                  style: GoogleFonts.pacifico(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: GoogleFonts.caveat(
                fontSize: 30,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              children: const [
                TextSpan(
                  text: 'Future ',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.lightGreen,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text: 'Flutter Apps ',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.orange,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                TextSpan(
                  text: 'Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF211C6A),
                    fontStyle: FontStyle.normal,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: GoogleFonts.fahkwang(
                //fontSize: 15,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              children: const [
                TextSpan(
                  text: 'Future ',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.pinkAccent,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text: 'Flutter Apps ',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.greenAccent,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                TextSpan(
                  text: 'Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF211C6A),
                    fontStyle: FontStyle.normal,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
