import 'package:flutter/material.dart';
import 'package:game_demo/task/quiz_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Экран с вопросом и вариантами ответов
class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            labelColor: Colors.blueGrey,
            tabs: [
              new Tab(text: '1'),
              new Tab(text: '2'),
              new Tab(text: '3'),
            ],
          ),
          Expanded(
            child: Center(
              child: Text(
                'Выбери зеленное, но не круглое.',
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
      ),
    );
  }
}

class QuizButtonsLayoutDesktop extends StatelessWidget {
  const QuizButtonsLayoutDesktop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200.0,
            height: 260.0,
            child: QuizButton(
              asset: 'images/circle_green_solid.png',
            ),
          ),
          SizedBox(
            width: 18.0,
          ),
          SizedBox(
            width: 200.0,
            height: 260.0,
            child: QuizButton(
              asset: 'images/lemon.png',
            ),
          ),
          SizedBox(
            width: 18.0,
          ),
          SizedBox(
            width: 200.0,
            height: 260.0,
            child: QuizButton(
              asset: 'images/umbrella_yellow.png',
            ),
          ),
          SizedBox(
            width: 18.0,
          ),
          SizedBox(
            width: 200.0,
            height: 260.0,
            child: QuizButton(
              asset: 'images/pine_tree.png',
            ),
          ),
        ],
      ),
    );
  }
}

class QuizButtonsLayoutMobile extends StatelessWidget {
  const QuizButtonsLayoutMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: QuizButton(
                  asset: 'images/circle_green_solid.png',
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: QuizButton(
                  asset: 'images/lemon.png',
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: QuizButton(
                  asset: 'images/umbrella_yellow.png',
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: QuizButton(
                  asset: 'images/pine_tree.png',
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
            ],
          ),
          SizedBox(height: 15.0,),
        ],
      ),
    );
  }
}