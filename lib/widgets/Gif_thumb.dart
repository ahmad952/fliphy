import 'package:fliphy/constants.dart';
import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:video_player/video_player.dart';

class GifThaumb extends StatefulWidget{
  final Url;
  // zur sound
   bool playSound= false;
  GifThaumb(this.Url,this.playSound);

  @override
  State<StatefulWidget> createState() {
    return GifThumbState();
  }}

class GifThumbState extends State<GifThaumb> {

  late VideoPlayerController _controller;
  // derfinieren neue zustand
  bool _istloding= false;

  @override
  void initState() {

    super.initState();
    _istloding =true;
    _controller =VideoPlayerController.network(widget.Url)..initialize().then((_){});
    setState(() {
      // sobald das video initialisert wurde
_istloding=false;
    });
// übberprüfen also   playSound false
    if(!widget.playSound){
      //mehrer viedos gleich zeitich lautsterke auf null
      _controller.setVolume(0);
    }
    //lazy loding innerhalb der Listview

    // das viedo beliebt  wiederholt wird
    _controller.setLooping(true);

    if(DISABLE_ANIMATION) {
      _controller.play();
    }
  }
  @override
  Widget build(BuildContext context) {
    if(_istloding ==true){
      return SkeletonAnimation(child: Container(
        // die  gesamte box ausfüllen muss alsu keine schwrze meher
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(color: Colors.black45),
// also lader animation auftreten
      )
      );
    }
    return VideoPlayer(_controller);
  }


}