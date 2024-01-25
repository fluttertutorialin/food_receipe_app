import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/modules/dialogs/video_dialog.dart';
import 'package:video_player/video_player.dart';

class PhotoList extends StatefulWidget {
  const PhotoList({super.key});

  @override
  State<PhotoList> createState() => _PhotoListState();
}

class _PhotoListState extends State<PhotoList> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset('assets/videos/video.mp4')
          ..initialize().then((_) {
            setState(() {});
            _videoPlayerController.play();
          });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GridView.builder(
          itemCount: 1,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: context.screenHeight * 0.19,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return Container(
              width: context.screenHeight * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                  onTap: () {
                    dialogVideo(context, _videoPlayerController);
                  },
                  child: Image.asset('assets/images/img.png')),
            );
          },
        ),
      ),
    );
  }
}
