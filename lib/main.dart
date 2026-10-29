import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: XylophoneScreen(),
    );
  }
}

class XylophoneScreen extends StatefulWidget {
  const XylophoneScreen({super.key});

  @override
  State<XylophoneScreen> createState() => _XylophoneScreenState();
}

class _XylophoneScreenState extends State<XylophoneScreen> {
  Widget drawRect({
    required Color rectColor,
    required double rectHeight,
    required double hz,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hz, vertical: 10.0),
      child: Container(
        height: rectHeight,
        decoration: BoxDecoration(
          color: rectColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          elevation: 5,
          title: Text(
            'Xylophone',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              drawRect(
                rectColor: const Color.fromARGB(255, 235, 6, 6),rectHeight: 60,hz: 20),
              drawRect(
                rectColor: const Color.fromARGB(255, 30, 73, 20),rectHeight: 60, hz: 40,),
              drawRect(
                rectColor: const Color.fromARGB(255, 70, 219, 33),
                rectHeight: 60,
                hz: 50,
              ),
              drawRect(
                rectColor: const Color.fromARGB(255, 25, 151, 173),
                rectHeight: 60,
                hz: 70,
              ),
              drawRect(
                rectColor: const Color.fromARGB(255, 128, 186, 209),
                rectHeight: 60,
                hz: 90,
              ),
              drawRect(
                rectColor: const Color.fromARGB(255, 160, 14, 128),
                rectHeight: 60,
                hz: 130,
              ),
              drawRect(
                rectColor: const Color.fromARGB(255, 175, 36, 194),
                rectHeight: 60,
                hz: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
