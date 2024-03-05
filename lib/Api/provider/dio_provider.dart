import 'package:dio_ap/Api/dio_service.dart';
import 'package:dio_ap/Api/user_model.dart';
import 'package:flutter/material.dart';

class DioProvider extends ChangeNotifier {
  List<UserModel> items = [];
  final _apiService = ApiService();
  Future<void> fetchPost() async {
    final test = await _apiService.getPosts();
    if (test != null) {
      notifyListeners();
    }
  }
}
