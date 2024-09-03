import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioScreen extends StatelessWidget {
  static const routeName = '/audio_screen';

  final List<String> audioFiles = [
    'audio/audio_one.mp3',
    'audio/mighty_one.mp3',
    // Add more audio file paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
        ),
        itemCount: audioFiles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _playAudio(context, audioFiles[index]),
            child: Card(
              child: Center(
                child: Icon(Icons.audiotrack),
              ),
            ),
          );
        },
      ),
    );
  }

  void _playAudio(BuildContext context, String audioFilePath) {
    final player = AudioPlayer();
    player.play(AssetSource(audioFilePath));
  }
}
