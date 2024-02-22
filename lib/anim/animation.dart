import 'package:flutter/material.dart';


class TAnimation {
  
  Widget moveContainer({required bool onLeft,required Widget ? widget}) {
    return AnimatedAlign(
      alignment: onLeft ? Alignment.centerLeft : Alignment.centerRight,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      child: widget,
    );
  }
}
