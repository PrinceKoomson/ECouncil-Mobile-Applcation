/* import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../models/audio.dart';

class AudioList extends StatefulWidget {
  static const routeName = '/ audio_screen';
  @override
  State<AudioList> createState() => _AudioListState();
}

class _AudioListState extends State<AudioList> {
  final List<Audio> audios = [
    Audio(index: 0, audioUrl: '', title: 'Audio 1'),
    Audio(index: 1, audioUrl: '', title: 'Audio 2'),
    // Add more audio objects as needed
  ];

  final audioplayer = AudioPlayer();

  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();

    ///Listen to states: playing , paused, stopped
    audioplayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    //Listen to audio duration
    audioplayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    //Listen to audio postion
    audioplayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    Future setAudio() async {
      // Repeat song when completed
      audioplayer.setReleaseMode(ReleaseMode.loop);

      //Load audio from URL

      audioplayer.setSourceUrl(audios[0].audioUrl);
    }
  }

  @override
  void dispose() {
    audioplayer.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/flyer.jpg',
                width: 50,
                height: 20,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'FIRST AUDIO',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Prince',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Slider(
              min: 0,
              max: duration.inSeconds.toDouble(),
              value: position.inSeconds.toDouble(),
              onChanged: (value) async {
                final position = Duration(seconds: value.toInt());
                await audioplayer.seek(position);

                //Option: Play audio if it was paused
                await audioplayer.resume();
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(formateTime(position)),
                  Text(formateTime(duration - position))
                ],
              ),
            ),
            CircleAvatar(
              radius: 35,
              child: IconButton(
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                iconSize: 50,
                onPressed: () async {
                  if (isPlaying) {
                    await audioplayer.pause();
                  } /* else {
                    await audioplayer.play(audios[0].audioUrl);
                  } */
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  String formateTime(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
 */