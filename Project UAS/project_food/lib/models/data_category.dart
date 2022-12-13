import 'package:flutter/material.dart';

class DataCategory {
  String idCategory;
  String strCategory;
  String strCategoryThumb;

  DataCategory({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
  });

  factory DataCategory.fromJson(Map<String, dynamic> json) {
    return DataCategory(
        idCategory: json['idCategory'],
        strCategory: json['strCategory'],
        strCategoryThumb: json['strCategoryThumb']);
  }
}
