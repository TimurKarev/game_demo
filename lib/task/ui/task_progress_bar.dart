import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TaskProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: deviceType == DeviceScreenType.desktop
          ? Column(
              children: <Widget>[
                BarItemWithValueDeskTop(
                  asset: 'images/star_task_bar.png',
                  value: '0',
                ),
                BarItemWithValueDeskTop(
                  asset: 'images/heart_task_bar.png',
                  value: '5 / 5',
                ),
                Image.asset('images/double_task_bar.png'),
              ],
            )
          : Row(
              children: <Widget>[
                BarItemWithValueTablet(
                  asset: 'images/star_task_bar.png',
                  value: '0',
                ),
                BarItemWithValueTablet(
                  asset: 'images/heart_task_bar.png',
                  value: '5 / 5',
                ),
                Image.asset('images/double_task_bar.png'),
              ],
            ),
    );
  }
}

class BarItemWithValueDeskTop extends StatelessWidget {
  final asset;
  final value;

  const BarItemWithValueDeskTop({Key? key, this.asset, this.value})
      : super(key: key);

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

class BarItemWithValueTablet extends StatelessWidget {
  final asset;
  final value;

  const BarItemWithValueTablet({Key? key, this.asset, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            child: Image.asset(
              asset,
              height: 48.0,
              width: 48.0,
              fit: BoxFit.fill,
            ),
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
          ),
          SizedBox(width: 10.0,),
        ],
      ),
    );
  }
}
