import 'package:dictionary_app/model/dictionary_model.dart';
import 'package:flutter/widgets.dart';

class DictionaryWidget extends StatelessWidget {
  const DictionaryWidget({Key? key, this.result}) : super(key: key);
  final DictionaryResult? result;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(result!.name.toString()), Text(result!.url.toString())],
    );
  }
}
