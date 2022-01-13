import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:troy_ox_street/models/response_model.dart';

class HttpService {
  Future<ResponseModel> fetchProducts(int page) async {
    try {
      final catalogString =
          await rootBundle.loadString("assets/mocks/catalog.json");
      final catalog = jsonDecode(catalogString);
      await Future.delayed(const Duration(seconds: 2));
      return ResponseModel.fromJson(catalog);
    } catch (error) {
      return ResponseModel([], null);
    }
  }
}
