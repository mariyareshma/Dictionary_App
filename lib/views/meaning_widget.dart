import 'package:dictionary_app/model/dictionary_model.dart';
import 'package:flutter/material.dart';

class MeaningWidget extends StatelessWidget {
  const MeaningWidget({Key? key, this.meaning}) : super(key: key);
  final Meaning? meaning;

  @override
  Widget build(BuildContext context) {
    List<Meaning> wordSearch = <Meaning>[];
    return Column(
      children: getMeaningWidget(wordSearch),
    );
  }

  List<Widget> getMeaningWidget(List<Meaning> word) {
    return word
        .map((e) => Column(
              children: [
                Text(e.synonyms.toString()),
                Text(e.antonyms.toString()),
                Text(e.partOfSpeech.toString()),
                Text(e.definitions.toString())
              ],
            ))
        .toList();
  }
}
