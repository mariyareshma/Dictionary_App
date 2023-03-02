import 'package:dictionary_app/model/dictionary_model.dart';
import 'package:flutter/material.dart';

class DefintionWidget extends StatelessWidget {
  const DefintionWidget({Key? key, this.definition}) : super(key: key);
  final Definition? definition;

  @override
  Widget build(BuildContext context) {
    List<Definition> getDefinition = <Definition>[];
    return Column(
      children: getDefinitionWidget(getDefinition),
    );
  }

  List<Widget> getDefinitionWidget(List<Definition> definition) {
    return definition
        .map((e) => Column(
              children: [
                Text(e.synonyms.toString()),
                Text(e.antonyms.toString()),
                Text(e.definition.toString()),
                Text(e.example.toString())
              ],
            ))
        .toList();
  }
}
