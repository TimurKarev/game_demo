import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:game_demo/task/ui/quiz_screen.dart';
import 'package:game_demo/task/ui/test/test_footer_button.dart';
import 'package:game_demo/task/ui/test/test_footer_widget.dart';
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
    var shortSide = false;
    var shortCenter = false;
    switch (deviceType) {
      case DeviceScreenType.mobile:
        shortSide = true;
        break;
      case DeviceScreenType.watch:
        shortCenter = true;
        shortSide = true;
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
          //height: 79.0,
          child: TestFooterWidget(),
        )
      ]),
    );
  }
}
