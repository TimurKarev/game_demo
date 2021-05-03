import 'package:flutter/material.dart';

class QuizButton extends StatefulWidget {
  const QuizButton({Key key, this.asset}) : super(key: key);

  @override
  _QuizButtonState createState() => _QuizButtonState();

  final asset;
}

class _QuizButtonState extends State<QuizButton> {
  @override
  Widget build(BuildContext context) {
    final side = MaterialStateProperty.resolveWith((states) {
      Color color = Colors.blueGrey[100];
      if (states.contains(MaterialState.hovered)) {
        color = Colors.blue[500];
      }
      return BorderSide(
        width: 2.0,
        color: color,
      );
    });

    final style = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      side: side,
      minimumSize: MaterialStateProperty.all<Size>(Size(220.0, 180.0)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );

    return ElevatedButton(
      style: style,
      onPressed: () {},
      child: Image.asset(
        widget.asset,
      ),
    );
  }
}
