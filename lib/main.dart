// import 'dart:io';

// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
// import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // final assetsAudioPlayer = AssetsAudioPlayer();
  // AudioPlayer audioPlayer;

  void initState() {
    super.initState();
  }

  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Widget localAsset() {
  //   return SingleChildScrollView(
  //     child: _Tab(
  //       children: [
  //         const Text("Play Local Asset 'audio.mp3':"),
  //         _Btn(txt: 'Play', onPressed: () => audioCache.play('audio.mp3')),
  //         const Text("Play Local Asset (via byte source) 'audio.mp3':"),
  //         _Btn(
  //           txt: 'Play',
  //           onPressed: () async {
  //             final bytes = await (await audioCache.loadAsFile('audio.mp3'))
  //                 .readAsBytes();
  //             audioCache.playBytes(bytes);
  //           },
  //         ),
  //         const Text("Loop Local Asset 'audio.mp3':"),
  //         _Btn(txt: 'Loop', onPressed: () => audioCache.loop('audio.mp3')),
  //         const Text("Loop Local Asset (via byte source) 'audio.mp3':"),
  //         _Btn(
  //           txt: 'Loop',
  //           onPressed: () async {
  //             final bytes = await (await audioCache.loadAsFile('audio.mp3'))
  //                 .readAsBytes();
  //             audioCache.playBytes(bytes, loop: true);
  //           },
  //         ),
  //         const Text("Play Local Asset 'audio2.mp3':"),
  //         _Btn(txt: 'Play', onPressed: () => audioCache.play('audio2.mp3')),
  //         const Text("Play Local Asset In Low Latency 'audio.mp3':"),
  //         _Btn(
  //           txt: 'Play',
  //           onPressed: () {
  //             audioCache.play('audio.mp3', mode: PlayerMode.LOW_LATENCY);
  //           },
  //         ),
  //         const Text(
  //           "Play Local Asset Concurrently In Low Latency 'audio.mp3':",
  //         ),
  //         _Btn(
  //           txt: 'Play',
  //           onPressed: () async {
  //             await audioCache.play(
  //               'audio.mp3',
  //               mode: PlayerMode.LOW_LATENCY,
  //             );
  //             await audioCache.play(
  //               'audio2.mp3',
  //               mode: PlayerMode.LOW_LATENCY,
  //             );
  //           },
  //         ),
  //         const Text("Play Local Asset In Low Latency 'audio2.mp3':"),
  //         _Btn(
  //           txt: 'Play',
  //           onPressed: () {
  //             audioCache.play('audio2.mp3', mode: PlayerMode.LOW_LATENCY);
  //           },
  //         ),
  //         getLocalFileDuration(),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: () {
                  // FlutterRingtonePlayer.stop();
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return ViewNotice();
                  // }));
                },
                child: Text('STOP'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _incrementCounter();
          audioCache.play('booked.wav');

          // audioCache.play('booked.mp3', volume: 5);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
