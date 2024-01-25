import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

Future dialogVideo(
    BuildContext context, VideoPlayerController videoPlayerController) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
          child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: VideoPlayer(videoPlayerController),
      ));
    },
  );
}
