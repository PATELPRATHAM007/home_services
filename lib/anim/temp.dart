import 'package:flutter/material.dart';

class Temp extends StatefulWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  bool isBlueContainerOnLeft = true;

  void toggleContainerPosition() {
    setState(() {
      isBlueContainerOnLeft = !isBlueContainerOnLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            clipBehavior: Clip.antiAlias,
            width: 900,
            height: 550,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                  left: isBlueContainerOnLeft ? 0 : 900 * 0.55,
                  duration: Duration(milliseconds: 800),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 900 * 0.45,
                    height: 550,
                    color: Colors.blue,
                  ),
                ),
                AnimatedPositioned(
                  left: isBlueContainerOnLeft ? 900 * 0.45 : 0,
                  duration: Duration(milliseconds: 800),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 900 * 0.55,
                    height: 550,
                    color: Colors.green, 
                    child: Column(children: [Text("hello")]),// Adjust color as needed
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: toggleContainerPosition,
          child: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
