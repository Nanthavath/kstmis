

import 'dart:convert';

import 'package:flutter/services.dart';

class Services{
  Future loadJsonDataProduct()async{
    var jsonString=await rootBundle.loadString('assets/storages/products.json');
    var data=json.decode(jsonString);
    return data;
  }
}