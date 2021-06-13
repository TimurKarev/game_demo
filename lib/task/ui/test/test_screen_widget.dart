import 'package:flutter/material.dart';
import 'package:game_demo/task/ui/quiz_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class QuizScreenWidget extends StatelessWidget {
  const QuizScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              'Выбери зеленое, но не круглое.',
              style: TextStyle(
                fontSize: 28.0,
              ),
            ),
          ),
        ),
        ScreenTypeLayout.builder(
          desktop: (BuildContext context ) => QuizButtonsLayoutDesktop(),
          tablet: (BuildContext context ) => QuizButtonsLayoutDesktop(),
          mobile: (BuildContext context ) => QuizButtonsLayoutMobile(),
          watch: (BuildContext context ) => QuizButtonsLayoutMobile(),
        ),
      ],
    );
  }
}
