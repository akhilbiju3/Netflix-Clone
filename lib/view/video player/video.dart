import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtubevideo extends StatefulWidget {
  const Youtubevideo({super.key});

  @override
  State<Youtubevideo> createState() => _YoutubevideoState();
}

class _YoutubevideoState extends State<Youtubevideo> {
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: 'COv52Qyctws',
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        YoutubePlayer(
          controller: controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
        ),
      ]),
    );
  }
}
