import 'package:audioplayers/audioplayers.dart';

class MediaManager {
  playClickSound(int clickNumber) async {
    AudioCache audioPlayer = AudioCache();
    // audioPlayer.play('audio/click1.mp3');
    if (clickNumber == 1) {
      // this will work after adding
      // - assets/audio/click1.mp3 under assets in pubspec.yaml
      audioPlayer.play('audio/click1.mp3');
    } else if (clickNumber == 2) {
      // this will work after adding
      // - assets/audio/click2.mp3 under assets in pubspec.yaml
      audioPlayer.play('audio/click2.wav');
    }
  }
}
