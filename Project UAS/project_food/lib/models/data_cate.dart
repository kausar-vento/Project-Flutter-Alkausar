import 'package:flutter/material.dart';

class DataCate {
  String idCategory;
  String strCategory;
  String strCategoryThumb;

  DataCate({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
  });

  factory DataCate.fromJson(Map<String, dynamic> json) {
    return DataCate(
        idCategory: json['idCategory'],
        strCategory: json['strCategory'],
        strCategoryThumb: json['strCategoryThumb']);
  }
}
