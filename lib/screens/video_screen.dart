import 'package:fliphy/screens/base_screen.dart';
import 'package:fliphy/widgets/Gif_thumb.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:share_plus/share_plus.dart';

class VideoScreen extends StatelessWidget {

  late final _videoUrl;
  late final String _videoTitel;
  VideoScreen(this._videoUrl,this._videoTitel);
  @override
  Widget build(BuildContext context) {
    //StreamBuilder (OrientationBuilder)  für logit für landscape modus zur orientieren
    return OrientationBuilder(

      builder: (context, orientation) {
        // überprüfen ob die orientation = Orientation.landscape
        if(orientation == Orientation.landscape){
          return Container(
            constraints:  BoxConstraints.expand(),
            child:  GifThaumb(this._videoUrl,true),
          );

        }

        return BaseScreen(children: [
        Text(this._videoTitel,style: TextStyle(color:  Colors.white,fontSize: 25)),
          Container(
            // abstand
            margin:  EdgeInsets.only(top: 50),
            //color: Colors.green,
            // wie könne prozentual innerhalb oerfläche definiern wie viel  tatsächlich diese Conterner einnemen soll
            height: MediaQuery.of(context).size.height * 0.5,
// playsound
          child: GifThaumb(this._videoUrl,true),
          ),
          // video zur shering

          Container(
            height: 60,
            // als child loote animation
            child:  GestureDetector (
              onTap: (){
               // zur share plugin shar
          Share.share("check this Gif "+ this._videoUrl,subject: "Gif");
              },

              child:  Lottie.network('https://assets8.lottiefiles.com/packages/lf20_nfgcytvk.json'),
        ),
margin: EdgeInsets.only(top: 50),
          )
        ],);
      }
    );
  }
}
