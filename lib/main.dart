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

  Widget drawRect(Color rectColor, double rectHeight, double hz){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hz, vertical: 10.0),
      child : Container(
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
      home: Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 5,
        title: Text('Xylophone',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              drawRect(const Color.fromARGB(255, 235, 6, 6),60, 20),
              drawRect(const Color.fromARGB(255, 30, 73, 20),60, 40),
              drawRect(const Color.fromARGB(255, 70, 219, 33),60, 50),
              drawRect(const Color.fromARGB(255, 25, 151, 173),60, 70),
              drawRect(const Color.fromARGB(255, 128, 186, 209),60, 90),
              drawRect(const Color.fromARGB(255, 160, 14, 128),60, 130),
              drawRect(const Color.fromARGB(255, 175, 36, 194),60, 150),
            ],
          ),
          
          
        ),

      ),
    );
  }
}