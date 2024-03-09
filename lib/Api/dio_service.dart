import 'package:dio/dio.dart';
import 'package:dio_ap/model/user_model.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: "https://reqres.in/api/"),
  );

  Future<UserModel?> getPosts() async {
    try {
      final response = await _dio.get('/users');
      if (response.statusCode == 200) {
        final user = UserModel.fromJson(response.data);
        return user;
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

