import 'dart:async';

import 'package:flutter/material.dart';

class DYStreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DYStreamDemoHome();
  }
}

class DYStreamDemoHome extends StatefulWidget {
  @override
  _DYStreamDemoHomeState createState() => _DYStreamDemoHomeState();
}

class _DYStreamDemoHomeState extends State<DYStreamDemoHome> {
  StreamSubscription _streamSubscription;
  StreamController<String> _streamController;
  StreamSink _sink;

  @override
  void dispose() {
    super.dispose();
    _streamController.close();
  }

  @override
  void initState() {
    super.initState();

    // Stream<String> _stream = Stream.fromFuture(fetchData());
    //_streamSubscription = _stream.listen(onData, onError: onError, onDone: onDone);

    // _streamController = StreamController<String>();
    _streamController = StreamController<String>.broadcast();
    _sink = _streamController.sink;
    _streamSubscription = _streamController.stream
        .listen(onData, onError: onError, onDone: onDone);
    _streamController.stream
        .listen(onDataTwo, onError: onError, onDone: onDone);
  }

  void onDone() {
    print("Done !");
  }

  void onError(error) {
    print('$error');
  }

  void onData(String data) {
    print('$data');
  }

  void onDataTwo(String data) {
    print('onDataTwo: $data');
  }

  void _pauseStream() {
    print("pause");
    _streamSubscription.pause();
  }

  void _resumeStream() {
    print("resume");
    _streamSubscription.resume();
  }

  void _cancelStream() {
    print("Cancel");
    _streamSubscription.cancel();
  }

  void _addDataToStream() async {
    print('Add data to');
    String data = await fetchData();
    // _streamController.add(data);
    _sink.add(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 6));
    return 'hello ~';
    // throw 'something happend';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: _streamController.stream,
              initialData: '...',
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              }
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Add'),
                  onPressed: _addDataToStream,
                ),
                ElevatedButton(
                  child: Text('Pause'),
                  onPressed: _pauseStream,
                ),
                ElevatedButton(
                  child: Text('Resume'),
                  onPressed: _resumeStream,
                ),
                ElevatedButton(
                  child: Text('Cancel'),
                  onPressed: _cancelStream,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
