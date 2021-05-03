import 'package:flutter/material.dart';
import 'package:game_demo/task/task_progress_bar.dart';
import 'package:game_demo/task/test_screen.dart';

/// Главный экран с вопросником
class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 46.0),
          width: 146.0,
          height: 70.0,
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.close,
                color: Colors.grey,
                size: 40.0,
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(80.0, 70.0),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: TestScreen(),
        ),
        Container(
          width: 100.0,
          height: 270.0,
          child: TaskProgressBar(),
        ),
      ],
    );
  }
}
