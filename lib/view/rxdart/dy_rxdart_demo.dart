import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class DYRxdartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DYRxdartHome();
  }
}

class DYRxdartHome extends StatefulWidget {
  @override
  _DYRxdartHomeState createState() => _DYRxdartHomeState();
}

class _DYRxdartHomeState extends State<DYRxdartHome> {

  PublishSubject<String> _subject = PublishSubject<String>();

  @override
  void dispose() { 
    super.dispose();
    _subject.close();
  }

  @override
  void initState() {
    super.initState();
    _subject
    // .map((event) => 'item:$event')
    // .where((event) => event.length > 9)
    .debounce((event) => TimerStream(true, Duration(milliseconds: 500)))
    .listen((value) {
      print('input: $value');
    });
    // Observable<String> _observable = Observable(Stream.fromIterable(['hello', 'hi vix']));
    // _subject.listen(print);
    //
    //
    // Stream.fromIterable([1, 2, 3]).throttleTime(Duration(seconds: 1)).listen(print); // prints 3
    // Stream.fromFuture(Future.value('hi, vix')).listen(print);
    // Stream.periodic(Duration(seconds: 2), (x) => x.toString());
    // publishSubject add必须放在监听的后面，BehaviorSubject可以放在任何地方，且最后一个添加有效。
    // ReplaySubject,监听所有的添加,且不用在意位置。
    
    // PublishSubject<String> _subject = PublishSubject<String>();
    // BehaviorSubject<String> _subject = BehaviorSubject<String>();
    // ReplaySubject<String> _subject = ReplaySubject<String>();
    // _subject.listen((value) {
    //   print('$value');
    // });
    // _subject.listen((value) {
    //   print('${value.toUpperCase()}');
    // });
    // _subject.add('hello');
    // _subject.add('hi, vix');
    // _subject.close();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxdartDemo'),
        elevation: 0,
      ),

      body: Theme( 
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),

        child: TextField( 
          decoration: InputDecoration ( 
            labelText: 'label',
            filled: true,
          ),
          onChanged: (value) {
            _subject.add(value);
          },
          onSubmitted: (value) {
            _subject.add(value);
          },
        ),
      ),
    );
  }
}
