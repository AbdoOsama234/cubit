import 'package:flutter/cupertino.dart';

import '../models/character_response.dart';
import '../web_services/characters_web_services.dart';

class CharactersRepository {

  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<CharacterResponse>> getAllCharacters()async {


    var responce=await charactersWebServices.getAllCharacters();

      return responce;




  }

}