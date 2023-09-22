import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:practica8_200570/common/Constants.dart';
import 'package:practica8_200570/model/Media.dart';

class HttpHandler{

  final String _baseUrl = "api.themoviedb.org";
  final String _language  = "es-MX";

  Future<dynamic>getJson(Uri Uri) async{
    http.Response response = await http.get(Uri);
    return json.decode(response.body).toString();
  }
  Future<String> fetchMovies(){
    var uri = new Uri.https(_baseUrl, "3/movie/popular",{
      'api_key' : API_KEY,
      'page': '1',
      'language': _language
    });
    return getJson(uri).then(((data) => 
      data['results'].map<Media>((item) => new Media(item)).toList()
    ));
  
  }
}