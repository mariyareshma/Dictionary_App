class DictionarySearchResult {
  DictionarySearchResult({
    required this.word,
    required this.phonetics,
    required this.meanings,
    required this.license,
    required this.sourceUrls,
  });

  final String? word;
  final List<Phonetic> phonetics;
  final List<Meaning> meanings;
  final DictionaryResult? license;
  final List<String> sourceUrls;

  factory DictionarySearchResult.fromJson(Map<String, dynamic> json) {
    return DictionarySearchResult(
      word: json["word"],
      phonetics: json["phonetics"] == null
          ? []
          : List<Phonetic>.from(
              json["phonetics"]!.map((x) => Phonetic.fromJson(x))),
      meanings: json["meanings"] == null
          ? []
          : List<Meaning>.from(
              json["meanings"]!.map((x) => Meaning.fromJson(x))),
      license: json["license"] == null
          ? null
          : DictionaryResult.fromJson(json["license"]),
      sourceUrls: json["sourceUrls"] == null
          ? []
          : List<String>.from(json["sourceUrls"]!.map((x) => x)),
    );
  }
}

class DictionaryResult {
  DictionaryResult({
    required this.name,
    required this.url,
  });

  final String? name;
  final String? url;

  factory DictionaryResult.fromJson(Map<String, dynamic> json) {
    return DictionaryResult(
      name: json["name"],
      url: json["url"],
    );
  }
}

class Meaning {
  Meaning({
    required this.partOfSpeech,
    required this.definitions,
    required this.synonyms,
    required this.antonyms,
  });

  final String? partOfSpeech;
  final List<Definition> definitions;
  final List<String> synonyms;
  final List<String> antonyms;

  factory Meaning.fromJson(Map<String, dynamic> json) {
    return Meaning(
      partOfSpeech: json["partOfSpeech"],
      definitions: json["definitions"] == null
          ? []
          : List<Definition>.from(
              json["definitions"]!.map((x) => Definition.fromJson(x))),
      synonyms: json["synonyms"] == null
          ? []
          : List<String>.from(json["synonyms"]!.map((x) => x)),
      antonyms: json["antonyms"] == null
          ? []
          : List<String>.from(json["antonyms"]!.map((x) => x)),
    );
  }
}

class Definition {
  Definition({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
    required this.example,
  });

  final String? definition;
  final List<dynamic> synonyms;
  final List<dynamic> antonyms;
  final String? example;

  factory Definition.fromJson(Map<String, dynamic> json) {
    return Definition(
      definition: json["definition"],
      synonyms: json["synonyms"] == null
          ? []
          : List<dynamic>.from(json["synonyms"]!.map((x) => x)),
      antonyms: json["antonyms"] == null
          ? []
          : List<dynamic>.from(json["antonyms"]!.map((x) => x)),
      example: json["example"],
    );
  }
}

class Phonetic {
  Phonetic({
    required this.audio,
    required this.sourceUrl,
    required this.license,
    required this.text,
  });

  final String? audio;
  final String? sourceUrl;
  final DictionaryResult? license;
  final String? text;

  factory Phonetic.fromJson(Map<String, dynamic> json) {
    return Phonetic(
      audio: json["audio"],
      sourceUrl: json["sourceUrl"],
      license: json["license"] == null
          ? null
          : DictionaryResult.fromJson(json["license"]),
      text: json["text"],
    );
  }
}
