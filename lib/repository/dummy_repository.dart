import 'package:ebuy_flutter/model/dummy_movie_response.dart';
import 'package:ebuy_flutter/network_api/api_base_helper.dart';

class MovieRepository {
  final String _apiKey = "78b9f63937763a206bff26c070b94158";
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Movie>> fetchMovieList() async {
    final response = await _helper.get("movie/popular?api_key=$_apiKey");
    return MovieResponse.fromJson(response).results;
  }
}
