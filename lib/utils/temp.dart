import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/section1': (context) => SectionPage(sectionName: 'Section 1', content: 'This is the content of Section 1.'),
        '/section2': (context) => SectionPage(sectionName: 'Section 2', content: 'This is the content of Section 2.'),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Website Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to section 1
                  Navigator.pushNamed(context, '/section1');
                },
                child: Text('Section 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to section 2
                  Navigator.pushNamed(context, '/section2');
                },
                child: Text('Section 2'),
              ),
              // Add more buttons for other sections if needed
            ],
          ),
        ),
      ),
    );
  }
}

class SectionPage extends StatelessWidget {
  final String sectionName;
  final String content;

  const SectionPage({Key? key, required this.sectionName, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sectionName),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            content,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
