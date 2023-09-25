import 'package:FlutterCharacters/data/models/characters.dart';
import 'package:FlutterCharacters/data/web_services/characters_web_services.dart';

class CharactersRepository {
  late CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

    Future<List<Character>> getAllCharacters() async {
      final characters = await charactersWebServices.getAllCharacters();
      return characters.map((character) => Character.fromJson(character)).toList();
    }

}