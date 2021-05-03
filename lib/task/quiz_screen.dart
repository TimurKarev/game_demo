import 'package:flutter/material.dart';
import 'package:game_demo/task/quiz_button.dart';

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
          Container(
            padding: EdgeInsets.symmetric(vertical: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QuizButton(asset: 'images/circle_green_solid.png',),
                SizedBox(width: 18.0,),
                QuizButton(asset: 'images/lemon.png',),
                SizedBox(width: 18.0,),
                QuizButton(asset: 'images/umbrella_yellow.png',),
                SizedBox(width: 18.0,),
                QuizButton(asset: 'images/pine_tree.png',),
              ],
            ),
          )
        ],
      ),
    );
  }
}

