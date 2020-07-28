// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Shop_model extends ChangeNotifier{
  final int shop_id;
  final String shop_name;
  final String shop_logo;
  final String shop_description;
  final List<dynamic> shop_address;

  Shop_model({this.shop_id, this.shop_name, this.shop_logo, this.shop_description, this.shop_address});


  factory Shop_model.fromJson(Map<String, dynamic> json) {
    return Shop_model(
      shop_id: json['id'],
      shop_name: json['name'],
      shop_description: json['description'],
      shop_logo: json['logo'],
      shop_address:json['addressList']
    );
  }
}


class Shop_list {
  final List<Shop_model> shops;

  Shop_list({
    this.shops,
});

  factory Shop_list.fromJson(List<dynamic> parsedJson) {

    List<Shop_model> shops = List<Shop_model>();
    shops = parsedJson.map((i)=>Shop_model.fromJson(i)).toList();
    // print(shops);

    return Shop_list(
      shops: shops
    );
  }
}




Future<Shop_list> fetchshops(String id) async {
  final response = await http.get('http://159.65.76.96:8080/style/shop/category?id=$id');
    // print (response.body);
    

    return Shop_list.fromJson((json.decode(response.body)));
    

}

