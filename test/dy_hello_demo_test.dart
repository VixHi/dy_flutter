import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:helloworld_flutter/view/test/dy_unit_test_demo.dart';

void main() {
  test('should return hello, + string', () {
    var _str = DYHelloDemo.greet('vix');
    expect(_str, 'hello,vix');
  });


  testWidgets('widgest test demo', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: DYTestDemo()
      )
    );
    // final labelText = find.text('hello');
    final labelText = find.widgetWithText(Chip, 'hello');
    // expect(labelText, findsNothing);
    expect(labelText, findsOneWidget);


    //点按事件测试
    final actionchipLabelText = find.text('0');
    expect(actionchipLabelText, findsOneWidget);
    final actionChip = find.byType(ActionChip);
    await tester.tap(actionChip);
    await tester.pump();

    final actionChipLableTextAfterTap = find.text('1');
    expect(actionChipLableTextAfterTap, findsOneWidget);





  });


}
