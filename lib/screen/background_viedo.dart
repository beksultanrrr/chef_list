import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'authorization_screen.dart';

class BackgroundVideo extends StatefulWidget {
  const BackgroundVideo({super.key});

  @override
  _BackgroundVideoState createState() => _BackgroundVideoState();
}

class _BackgroundVideoState extends State<BackgroundVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/video/1.mp4');
    initVideo();
    super.initState();
  }

  Future<void> initVideo() async {
    await _controller.initialize().then((value) {
      _controller.setLooping(true);
      _controller.play();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          
          children: <Widget>[
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: _controller.value.isInitialized
                    ? SizedBox(
                        width: _controller.value.size?.width ?? 0,
                        height: _controller.value.size?.height ?? 0,
                        child: VideoPlayer(_controller),
                      )
                    : const SizedBox(),
              ),
            ),
            const LoginWidget(),

          
            // Transform.translate(
            //     offset: Offset(155, 140),
            // child: CircleAvatar(
            //     radius: (30),
            //     backgroundColor: Colors.white,
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(50),
            // child: Image.asset(
            //   "assets/images/chef.png",
            //   width: 35,
            //   height: 35,
            // ),
            //         ))),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
