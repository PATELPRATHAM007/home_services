import "package:flutter/material.dart";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAnimatedText(),
    );
  }
}

class MyAnimatedText extends StatefulWidget {
  @override
  _MyAnimatedTextState createState() => _MyAnimatedTextState();
}

class _MyAnimatedTextState extends State<MyAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Set up the animation controller
    _controller = AnimationController(
      duration: Duration(milliseconds: 200), // Adjust the duration as needed
      vsync: this,
    );

    // Set up the animation
    _animation = Tween<double>(begin: 0, end: 0.5).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Animation'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(_animation.value * 40, 0), // Adjust the distance
              child: Opacity(
                opacity: 0.5 - _animation.value, // Faster fading effect
                child: Text(
                  'Moving Text',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}