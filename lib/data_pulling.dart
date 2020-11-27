import 'package:http/http.dart';

class DataPulling{

  Client _client;

  DataPulling(){
    this._client = Client();
  }

  Future<Response> grabJson(){
    String url = 'https://api.covid19api.com/total/country/united-states/status/deaths?from=2020-11-25T00:00:00Z&to=2020-11-26T00:00:00Z';
    return _client.get(url);
  }

}