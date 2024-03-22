import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage{
 static String? authtoken;
  static  Future getKey()async{
    final prefs = await SharedPreferences.getInstance();
    authtoken = await prefs.getString('token');

 return authtoken;


  }
  static setKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', key);
    print('set key $key');
  }
}