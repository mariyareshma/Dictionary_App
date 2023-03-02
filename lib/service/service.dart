import 'package:dictionary_app/model/dictionary_model.dart';
import 'package:dio/dio.dart';

var dio = Dio();

Future<DictionarySearchResult?> getDictionaryWord(String word) async {
  var response =
      await dio.get('https://api.dictionaryapi.dev/api/v2/entries/en/$word');

  if (response.statusCode == 200) {
    var wordJsons = response.data;
    var wordObj = DictionarySearchResult.fromJson(wordJsons[0]);
    return wordObj;
  }

  return null;
}
