import 'package:shared_preferences/shared_preferences.dart';

import '../../data/enum/shared_keys.dart';
import '../../data/model/pokemon.dart';

class SharedManager {
  static SharedManager? _sharedManager;
  static SharedPreferences? _preferences;

  static Future<SharedManager?> getInstance() async {
    if (_sharedManager == null) {
      var secureStorage = SharedManager._();
      await secureStorage._init();
      _sharedManager = secureStorage;
    }
    return _sharedManager;
  }

  SharedManager._();
  Future _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<bool>? setBool(SharedKeys key, bool value) {
    if (_preferences == null) return null;
    return _preferences!.setBool(key.toString(), value);
  }

  static bool getBool(SharedKeys key, {bool defValue = false}) {
    if (_preferences == null) return defValue;
    return _preferences!.getBool(key.toString()) ?? defValue;
  }

  static Future<bool>? setString(SharedKeys key, String value) {
    if (_preferences == null) return null;
    return _preferences!.setString(key.toString(), value);
  }

  static String? getString(SharedKeys key, {String defValue = 'boşş'}) {
    if (_preferences == null) return defValue;
    return _preferences!.getString(key.toString());
  }

  static Future<bool>? setList(SharedKeys key, List<String> value) {
    if (_preferences == null) return null;
    return _preferences!.setStringList(key.toString(), value);
  }

  static bool getList(SharedKeys key, {bool defValue = false}) {
    if (_preferences == null) return defValue;
    return _preferences!.getBool(key.toString()) ?? defValue;
  }

  static Future<bool> removeKey(SharedKeys key) {
    return _preferences!.remove(key.toString());
  }
}
