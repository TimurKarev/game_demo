import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:game_demo/task/quiz_screen.dart';
import 'package:game_demo/task/task_screen_buttons.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Планшет с таб баром и кнопкой Ответ
class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    var short_side = false;
    var short_center = false;
    switch (deviceType) {
      case DeviceScreenType.mobile:
        short_side = true;
        break;
      case DeviceScreenType.watch:
        short_center = true;
        short_side = true;
        break;
    }
    return Container(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20.0,),
              TestScreenButton.forParent(short: short_side),
              SizedBox(
                width: 18.0,
              ),
              Expanded(child: TestScreenButton.forAnswer(short: short_center)),
              SizedBox(
                width: 18.0,
              ),
              TestScreenButton.forSound(short: short_side),
              SizedBox(width: 20.0,),
            ],
          ),
        )
      ]),
    );
  }
}
