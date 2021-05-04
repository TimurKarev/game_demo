import 'package:flutter/material.dart';

class TestScreenButton extends StatelessWidget {
  final Widget child;
  final width;
  final primaryColor;
  final _height = 60.0;

  const TestScreenButton({Key key, this.child, this.width, this.primaryColor}) : super(key: key);

  factory TestScreenButton.forParent({short=false}) {
    var cldn = <Widget> [Image.asset('images/help_button_icon.png')];
    if (!short) {
      cldn.add(SizedBox(width: 16.0));
      cldn.add(Text('Родителю'));
    }
    return TestScreenButton(
      child: Row(
        children: cldn,
      ),
      width: short ? 0.0 : 233.0,
      primaryColor: Colors.lightBlue,
    );
  }

  factory TestScreenButton.forSound({short=false}) {
    var cldn = <Widget> [Image.asset('images/sound_button_icon.png')];
    if (!short) {
      cldn.add(SizedBox(width: 8.0));
      cldn.add(Text('Звук'));
    }
    return TestScreenButton(
      child: Row(
        children: cldn,
      ),
      width: short ? 0.0 : 229.0,
      primaryColor: Colors.deepPurpleAccent,
    );
  }

  factory TestScreenButton.forAnswer({short=false}) {
    var text = 'Принять ответ';
    if (short) {
      text = 'Ответ';
    }
    return TestScreenButton(
      child: Text(text),
      width: short ? 0.0 : 470.0,
      primaryColor: Colors.green,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        // shadowColor: Colors.lightBlue[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        textStyle: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
        minimumSize: Size(width, _height),
        elevation: 10.0,
      ),
      onPressed: () {},
      child: child,
    );
  }
}
