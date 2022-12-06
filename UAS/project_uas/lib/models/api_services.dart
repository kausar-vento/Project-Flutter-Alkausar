import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_uas/models/data_class.dart';

class ApiService {
  Future<List<DataClass>> getAllData() async {
    final response = await http.get(
      Uri.parse('https://6283762138279cef71d77f41.mockapi.io/api/v1/Data'),
    );
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => DataClass.fromJson(data)).toList();
    } else {
      throw Exception('Gagal Load Data');
    }
  }
}
