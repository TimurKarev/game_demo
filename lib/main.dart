import 'package:flutter/material.dart';
import 'package:game_demo/task/ui/task_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 1290, tablet: 1000, watch: 700),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: TaskScreen(),
        backgroundColor: Colors.deepPurpleAccent[200],
      ),
    );
  }
}
