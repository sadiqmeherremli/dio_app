import 'package:dio/dio.dart';
import 'package:dio_ap/Api/user_model.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: "https://reqres.in/api/"),
  );

  Future<List<UserModel>?> getPosts() async {
    try {
      final response = await _dio.get('/users');
      if (response.statusCode == 200) {
        final List<dynamic> result = response.data['data'];
        return result.map((e) => UserModel.fromJson(e)).toList();
      } else {
        
        throw response.data; 
      }
    // ignore: deprecated_member_use
    } on DioError catch (error) {
      
      print('DioError creat: $error');
      return null;
    } catch (error) {
      
      print(' wrong: $error');
      return null;
    }
  }
}

