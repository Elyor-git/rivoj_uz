import 'package:shared_preferences/shared_preferences.dart';

enum StorageKeys {
  isLogin('isLogin'),
  userId('userId');

  const StorageKeys(this.key);
  final String key;
}

late final SharedPreferences $storage;

class DBService {
  static Future<void> initialize() async {
    $storage = await SharedPreferences.getInstance();
  }

  static String get userId {
    return $storage.getString(StorageKeys.userId.name) ?? '';
  }

  static set userId(String id) {
    $storage.setString(StorageKeys.userId.name, id);
  }

  static bool get isLogin {
    return $storage.getBool(StorageKeys.isLogin.name) ?? false;
  }

  static set isLogin(bool value) {
    $storage.setBool(StorageKeys.isLogin.name, value);
  }
}
