import 'dart:convert';

import 'package:flutter/services.dart';

class Alexandria {
  String keyword;
  int id;
  String autocompleteterm;

  Alexandria({
    this.keyword,
    this.id,
    this.autocompleteterm,
  });

  factory Alexandria.fromJson(Map<String, dynamic> parsedJson) {
    return Alexandria(
      keyword: parsedJson['keyword'] as String,
      id: parsedJson['id'],
      autocompleteterm: parsedJson['autocompleteterm'] as String,
    );
  }
}

class Mnofia {
  String keyword;
  int id;
  String autocompleteterm;

  Mnofia({
    this.keyword,
    this.id,
    this.autocompleteterm,
  });

  factory Mnofia.fromJson(Map<String, dynamic> parsedJson) {
    return Mnofia(
      keyword: parsedJson['keyword'] as String,
      id: parsedJson['id'],
      autocompleteterm: parsedJson['autocompleteterm'] as String,
    );
  }
}








class CityViewModel {
  static List<Alexandria> alexandria;
  static List<Mnofia> mnofia;
  
  static Future loadAlex() async {
    try {
      alexandria = new List<Alexandria>();
      String jsonString =
          await rootBundle.loadString('assets/jsonfile/cities.json');
      Map parsedJson = json.decode(jsonString);
      var categoryJson = parsedJson['Alexandria'] as List;
      for (int i = 0; i < categoryJson.length; i++) {
        alexandria.add(new Alexandria.fromJson(categoryJson[i]));
      }
    } catch (e) {
      print(e);
    }
  }
  

  static Future loadMnofia() async {
    try {
      mnofia = new List<Mnofia>();
      String jsonString =
          await rootBundle.loadString('assets/jsonfile/cities.json');
      Map parsedJson = json.decode(jsonString);
      var categoryJson = parsedJson['Mnofia'] as List;
      for (int i = 0; i < categoryJson.length; i++) {
        mnofia.add(new Mnofia.fromJson(categoryJson[i]));
      }
    } catch (e) {
      print(e);
    }
  }


}
