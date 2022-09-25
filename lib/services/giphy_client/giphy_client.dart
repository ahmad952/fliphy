
import 'package:fliphy/services/giphy_client/models/popular_video_response.dart';
import 'package:http/http.dart';

class GiphyClient {
  static final baseUri = Uri(scheme: "https", host: "api.giphy.com");
  final String _apikey;
  final Client _client;

  GiphyClient({required String apikey , required Client client })
      : _apikey = apikey,
        _client = client ;

  Future<PopularVideoResponse> getPopularVideos(
      {int offset = 5, int limit = 20}) async {
    final uri = baseUri.replace(path: "/v1/gifs/trending", queryParameters: {
      "offset": offset.toString(),
      "limit": limit.toString()
    });
    final response = await _getWithApiKey(uri);
    return popularVideoResponseFromJson(response.body);
  }

  _getWithApiKey(Uri uri) async {
    final response = await _client.get(uri.replace(
        queryParameters: Map<String, String>.from(uri.queryParameters)
          ..putIfAbsent("api_key", () => _apikey)));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw GiphyClientError(response.statusCode, response.body);
    }
  }
}

class GiphyClientError {
  final int statusCode;

  final String exception;

  GiphyClientError(this.statusCode, this.exception);

  @override
  String toString() {
    //todo
    return 'GiphyClientError({statusCode: $statusCode, exception $exception})';
  }
}
