import 'package:practica8_200570/common/Util.dart';

class Media{
  int id;
  double voteAverage;
  String title;
  String posterPath;
  String backdropPath;
  String overview;
  String releaseDate;
  List<dynamic> genreIds;


String getPosterUrl() => getMediumPictureUrl(posterPath);
  factory Media(Map jsonMap){
    try{
      return new Media.deserialize(jsonMap);
  }catch(ex){
    throw ex;
  }
  }

  Media.deserialize(Map json):
  id = json["id"].toInt(),
  voteAverage = json["vote_average"].toDouble(),
  title = json["title"],
  posterPath = json["poster_path"]?? "",
  backdropPath = json["backdrop_path"]?? "",
  overview = json["overview"],
  releaseDate = json["release_date"],
  genreIds = json["genre_ids"].toList();
}