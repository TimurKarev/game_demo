import 'package:flutter/material.dart';
import 'package:game_demo/task/ui/task_progress_bar.dart';
import 'package:game_demo/task/ui/test/test_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Главный экран с вопросником
class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet ||
            sizingInformation.deviceScreenType == DeviceScreenType.mobile ||
            sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
                      width: 75.0,
                      height: 60.0,
                      child: TaskButtonClose(),
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      height: 50.0,
                      child: TaskProgressBar(),
                    ),
                  ],
                ),
                Expanded(
                  child: TestScreen(),
                ),
              ],
            ),
          );
        }

        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 46.0),
              width: 146.0,
              height: 70.0,
              child: TaskButtonClose(),
            ),
            SizedBox(
              width: 1040.0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TestScreen(),
              ),
            ),
            Container(
              width: 100.0,
              height: 270.0,
              child: TaskProgressBar(),
            ),
          ],
        );
      },
    );
  }
}

class TaskButtonClose extends StatelessWidget {
  const TaskButtonClose({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
