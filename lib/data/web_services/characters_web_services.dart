import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../constants/strings.dart';
import '../models/character_response.dart';
part 'characters_web_services.g.dart';

abstract class ParseErrorLogger {
  void logError(
      Object error,
      StackTrace stackTrace,
      RequestOptions options, {
        Response? response,
      });
}
@RestApi(baseUrl: baseUrl)

abstract class CharactersWebServices{

  factory CharactersWebServices(Dio dio, {String? baseUrl}) = _CharactersWebServices;

  @GET('character')
  Future<List<CharacterResponse>>getAllCharacters();


}



