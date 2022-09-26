import 'package:fliphy/constants.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class GifThaumb extends StatefulWidget{
  final Url;
  GifThaumb(this.Url);

  @override
  State<StatefulWidget> createState() {
    return GifThumbState();
  }}

class GifThumbState extends State<GifThaumb> {

  late VideoPlayerController _controller;

  @override
  void initState() {

    super.initState();
    _controller =VideoPlayerController.network(widget.Url)..initialize().then((_){});
    setState(() {

    });
    //mehrer viedos gleich zeitich
    _controller.setVolume(0);
    // das viedo beliebt  wiederholt wird
    _controller.setLooping(true);
    if(DISABLE_ANIMATION) {
      _controller.play();
    }
  }
  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }


}