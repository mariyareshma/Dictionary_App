import 'package:dictionary_app/model/dictionary_model.dart';
import 'package:flutter/material.dart';

class PhoneticWidget extends StatelessWidget {
  const PhoneticWidget({Key? key, this.phonetic}) : super(key: key);
  final Phonetic? phonetic;

  @override
  Widget build(BuildContext context) {
    List<Phonetic> phoneticList = <Phonetic>[];
    return Column(
      children: getPhoneticWidget(phoneticList),
    );
  }

  List<Widget> getPhoneticWidget(List<Phonetic> ponetic) {
    return ponetic
        .map((e) => Column(
              children: [
                Text(e.audio.toString()),
                Text(e.text.toString()),
                Text(e.license.toString()),
                Text(e.sourceUrl.toString())
              ],
            ))
        .toList();
  }
}
