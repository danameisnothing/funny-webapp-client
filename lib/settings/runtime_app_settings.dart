import 'package:shared_preferences/shared_preferences.dart';

final runtimeAppSettings = RuntimeAppSettings();

class RuntimeAppSettings {
  bool isDarkMode;
  SharedPreferences? _pref;

  RuntimeAppSettings() : isDarkMode = false {
    _pref = null;
  }

  Future initAndLoadFromPreference() async {
    _pref = await SharedPreferences.getInstance();

    isDarkMode = _pref!.getBool("isDarkMode") ?? false;
  }

  Future savePreferences() async {
    if (_pref == null) {
      throw Exception("Object has not been properly initialized yet");
    }

    await _pref!.setBool("isDarkMode", isDarkMode);
  }
}
