import 'package:flutter/material.dart';
import 'test_footer_button.dart';

class TestFooterWidget extends StatelessWidget {
  const TestFooterWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: LayoutBuilder(builder: (_, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 20.0,
            ),
            TestFooterButton.forParent(
              constraints: constraints,
            ),
            SizedBox(
              width: 18.0,
            ),
            Expanded(child: TestFooterButton.forAnswer(constraints: constraints)),
            SizedBox(
              width: 18.0,
            ),
            TestFooterButton.forSound(constraints: constraints),
            SizedBox(
              width: 20.0,
            ),
          ],
        );
      }),
    );
  }
}
