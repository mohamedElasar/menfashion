// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Category_model {
  final int category_id;
  final String category_name;
  final String category_logo;
  final String category_description;

  Category_model({this.category_id ,this.category_name, this.category_logo,this.category_description});

  factory Category_model.fromJson(Map<String, dynamic> json) {
    return Category_model(
      category_id: json['id'],
      category_name: json['name'],
      category_description: json['description'],
      category_logo: json['logo']
    );
  }
}


class Category_list {
  final List<Category_model> categories;

  Category_list({
    this.categories,
});

  factory Category_list.fromJson(List<dynamic> parsedJson) {

    List<Category_model> categories = List<Category_model>();
    categories = parsedJson.map((i)=>Category_model.fromJson(i)).toList();
 
    return Category_list(
      categories: categories
    );
  }
}




Future<Category_list> fetchcategories() async {
  final response = await http.get('http://159.65.76.96:8080/style/category/all');
    // print (response.body);

    return Category_list.fromJson((json.decode(response.body)));

}

