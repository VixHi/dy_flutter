import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_driver/flutter_driver.dart' as dy_driver;
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('APP', (){
    dy_driver.FlutterDriver _driver;
    
    
    final actionChip = dy_driver.find.byValueKey('');
    final actionChiplabelText = dy_driver.find.byValueKey('');

    setUpAll(() async{
      _driver = await dy_driver.FlutterDriver.connect();
    });

    tearDownAll(() async{
      if (_driver != null) {
        _driver.close();
      }
    });

    test('start at 0', () async {
      expect(await _driver.getText(actionChiplabelText), '0');
    });

    test('increments the counter', () async {
      await _driver.tap(actionChip);
      expect(await _driver.getText(actionChiplabelText), '1');
    });

  });
}