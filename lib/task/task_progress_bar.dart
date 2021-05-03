import 'package:flutter/material.dart';

class TaskProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          BarItemWithValue(
            asset: 'images/star_task_bar.png',
            value: '0',
          ),
          BarItemWithValue(
            asset: 'images/heart_task_bar.png',
            value: '5 / 5',
          ),
          Image.asset('images/double_task_bar.png'),
        ],
      ),
    );
  }
}

class BarItemWithValue extends StatelessWidget {
  final asset;
  final value;

  const BarItemWithValue({Key key, this.asset, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 60.0,
            height: 60.0,
            child: Image.asset(asset),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              value,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
