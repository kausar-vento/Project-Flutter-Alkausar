import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_food/models/data_category.dart';

class ApiService {
  Future<List<DataCategory>> getData() async {
    final response = await http.get(
      Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'),
    );
    var jsonObject = json.decode(response.body);
    List getCate = (jsonObject as Map<String, dynamic>)['categories'];
    if (response.statusCode == 200) {
      return getCate.map((data) => DataCategory.fromJson(data)).toList();
    } else {
      throw Exception('Gagal Load Data');
    }
  }
}
