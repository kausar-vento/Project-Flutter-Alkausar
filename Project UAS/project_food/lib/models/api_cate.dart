import 'dart:convert';

import 'package:http/http.dart' as http;

import 'data_cate.dart';

class ApiCate {
  Future<List<DataCate>> getData() async {
    final response = await http.get(
      Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'),
    );
    var jsonObject = json.decode(response.body);
    List getCate = (jsonObject as Map<String, dynamic>)['categories'];
    if (response.statusCode == 200) {
      return getCate.map((data) => DataCate.fromJson(data)).toList();
    } else {
      throw Exception('Gagal Load Data');
    }
  }
}
