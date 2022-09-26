import 'package:fliphy/screens/base_screen.dart';
import 'package:fliphy/services/giphy_client/giphy_client.dart';
import 'package:fliphy/services/giphy_client/models/popular_video_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return BaseScreen(children: [
     Container(
       child: Column(children: [
         
         Text("Popular Gift",style: TextStyle(fontSize: 25,color : Colors.white) ),
         // abstand difinieren
         Container(height: 15,),
         // unser Gif list vverwenden wir als Widget  ininhalb dise container
         Expanded(child: GifList(),)
         
       ],
         
         
         crossAxisAlignment: CrossAxisAlignment.stretch,

       ),
       
       height: 250,
       //color:Colors.green,

     )
   ],);
  }
}

class GifList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return GifListState();
  }


}
class GifListState extends State<GifList> {
  // als state erzeugen wir 
  late PopularVideoResponse _popularVideoResponse;
  // abfrage  gegn gfi api starten (  stat erzeugen) 
  @override
  void initState() {

    super.initState();
    final client = GiphyClient(apikey: "15nyrF5JECzuxaQ1fzdXTcpsGXA13icF", client: http.Client());
    
    // staten die abfrage mit client,
    client.getPopularVideos().then((videoResponse) {
      setState(() {
        _popularVideoResponse = videoResponse; // 
      });
      
      
      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // in laufe die renderzeyklus   ist zunächsten mal  die gif-intal nicht verfügbar  daher überprüfen  wir  ob Populer.. 0 ist 
    if(_popularVideoResponse == null){
      return Container();
    }
    //horizontal scrollen  
    return ListView(scrollDirection:Axis.horizontal , children: 
      _popularVideoResponse.data!.map((e) {
        return Container(
          width:  300,
          child:  Stack(
            // hier kann man titel von Gif machen
// definieren nochmad das Gif 
            children: [
              //damit die Containter abrunden
             ClipRRect(borderRadius: BorderRadius.circular(8.0),child: Container(
              // color: Colors.amber,
               child: Stack(
                //diese Sack wird später durch unsere tatsächliches Video ersetze
              ),
                constraints: BoxConstraints.expand(),// auf den text schreiben können
              ),
             ),
              // damit das Text unten
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: Container()),
                  Container(
                    child: Text(e.title.toString(), style: TextStyle(fontSize: 15,color:
                    Colors.white
                    ),
                    ),
                    // transparenten hintergrund
                    decoration:BoxDecoration(color:  Colors.black45) ,
                    height: 40,
                  )
                ],
              )
            ],

          ),
         // color: Colors.blue,
          // abstand difinieren
          margin: EdgeInsets.only(right: 10),
          
        );
        
      }).toList() // denn die ausführung  map funktion  laze ist  und childer ein echte Liste erwrtet ,
      
    );

  }
  
  
}