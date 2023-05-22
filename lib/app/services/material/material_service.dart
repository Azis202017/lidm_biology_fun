import 'dart:convert';

import 'package:biology_fun/app/constant/api_url.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../data/model/list_material_model.dart';

class MaterialService {
  Future<List<MaterialClass>> getAllMaterial() async {
    
    try {
      final storage = GetStorage();
      Uri uri = Uri.parse('$apiUrl/material');
      http.Response response = await http.get(
        uri,
        headers: {
          'Authorization':
              'Bearer ${storage.read('token')}',
        },
      );
      if (response.statusCode == 200) {
        List? data =
            (json.decode(response.body) as Map<String, dynamic>)['data'];
        if (data == null || data.isEmpty) {
          return [];
        } else {
          return data.map((e) => MaterialClass.fromJson(e)).toList();
        }
      }
      return [];
    } catch (e) {
      throw Exception(e);
    }
  }
}
