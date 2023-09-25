import 'package:FlutterCharacters/data/models/characters.dart';
import 'package:FlutterCharacters/data/repository/characters_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {

  final CharactersRepository charactersRepository;
  List<Character> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getAllCharacters(){
    charactersRepository.getAllCharacters().then((characters){
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });
    return characters;
  }
}
