import 'package:fliphy/services/giphy_client/giphy_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
const apikey= "15nyrF5JECzuxaQ1fzdXTcpsGXA13icF";
var clint = http.Client();
void main (){

  group("Giphy Client Tests", () {
    test("test responsr", ()async {

      final clint = GiphyClient(apikey: apikey, client: http.Client() );
      final  videos  = await clint.getPopularVideos(limit: 15);
      expect(videos.data?.length, 15);
    } );


  });

}
