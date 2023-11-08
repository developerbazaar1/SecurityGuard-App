import 'package:get_storage/get_storage.dart';

class TokenStorage {
  final box = GetStorage();
  final _tokenKey = 'token';

  String? get token => box.read(_tokenKey);

  Future<void> saveToken(String token) async {
    await box.write(_tokenKey, token);
  }

  Future<void> removeToken() async {
    await box.remove(_tokenKey);
  }
}
