import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:game_demo/task/quiz_screen.dart';
import 'package:game_demo/task/task_screen_buttons.dart';

/// Планшет с таб баром и кнопкой Ответ
class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1040.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            const Radius.circular(15),
          ),
          color: Colors.indigo,
        ),
        child: Column(children: [
          Expanded(child: QuizScreen()),
          Container(
            height: 79.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 48.0,),
                TestScreenButton.forParent(),
                SizedBox(width: 18.0,),
                TestScreenButton.forAnswer(),
                SizedBox(width: 18.0,),
                TestScreenButton.forSound(),              ],
            ),
          )
        ]),
      ),
    );
  }
}
