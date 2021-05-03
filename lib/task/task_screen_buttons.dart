import 'package:flutter/material.dart';

class TestScreenButton extends StatelessWidget {
  final Widget child;
  final width;
  final primaryColor;
  final _height = 60.0;

  const TestScreenButton({Key key, this.child, this.width, this.primaryColor}) : super(key: key);

  factory TestScreenButton.forParent() {
    return TestScreenButton(
      child: Row(
        children: [
          Image.asset('images/help_button_icon.png'),
          SizedBox(width: 16.0),
          Text('Родителю'),
        ],
      ),
      width: 233.0,
      primaryColor: Colors.lightBlue,
    );
  }

  factory TestScreenButton.forSound() {
    return TestScreenButton(
      child: Row(
        children: [
          Image.asset('images/sound_button_icon.png'),
          SizedBox(width: 8.0),
          Text('Звук'),
        ],
      ),
      width: 229.0,
      primaryColor: Colors.deepPurpleAccent,
    );
  }

  factory TestScreenButton.forAnswer() {
    return TestScreenButton(
      child: Text('Принять ответ'),
      width: 470.0,
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
