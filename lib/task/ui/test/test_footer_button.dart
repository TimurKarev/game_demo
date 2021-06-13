import 'package:flutter/material.dart';
import 'package:game_demo/task/ui/const/task_layout_sizes.dart';

class TestFooterButton extends StatelessWidget {
  final Widget? child;
  final width;
  final primaryColor;
  final _height = 60.0;

  const TestFooterButton({Key? key, this.child, this.width, this.primaryColor}) : super(key: key);

  factory TestFooterButton.forParent({required BoxConstraints constraints}) {
    var cldn = <Widget> [Image.asset('images/help_button_icon.png')];
    var width = 95.0;
    if (constraints.maxWidth > TaskLayoutSizes.small) {
      width = 130.0;
    }
    if (constraints.maxWidth > TaskLayoutSizes.medium) {
      cldn.add(SizedBox(width: 16.0));
      cldn.add(Text('Родителю'));
      width = 233.0;
    }
    return TestFooterButton(
      child: Row(
        children: cldn,
      ),
      width: width,
      primaryColor: Colors.lightBlue,
    );
  }

  factory TestFooterButton.forSound({required BoxConstraints constraints}) {
    var cldn = <Widget> [Image.asset('images/sound_button_icon.png')];
    var width = 95.0;
    if (constraints.maxWidth > TaskLayoutSizes.small) {
      width = 130.0;
    }
    if (constraints.maxWidth > TaskLayoutSizes.medium) {
      cldn.add(SizedBox(width: 8.0));
      cldn.add(Text('Звук'));
      width = 233.0;
    }
    return TestFooterButton(
      child: Row(
        children: cldn,
      ),
      width: width,
      primaryColor: Colors.deepPurpleAccent,
    );
  }

  factory TestFooterButton.forAnswer({required BoxConstraints constraints}) {
    var text = 'Принять ответ';
    var width = 470.0;
    if (constraints.maxWidth < TaskLayoutSizes.small) {
      text = 'Ответ';
      width = 80.0;
    }
    return TestFooterButton(
      child: Text(text),
      width: width,
      primaryColor: Colors.green,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
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
