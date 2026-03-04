import 'package:bloc/bloc.dart';
import 'package:cubit/data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

import '../../data/models/character_response.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<CharacterResponse>characters;
  CharactersCubit(this.charactersRepository,this.characters) : super(CharactersInitial());




  List<CharacterResponse>getAllCharacters(){

    charactersRepository.getAllCharacters().then((characters){
      
      emit(CharactersLoaded(characters));

      this.characters=characters;

    });

    return characters;

  }






}
