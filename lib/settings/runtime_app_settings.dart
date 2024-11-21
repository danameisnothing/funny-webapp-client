import 'package:shared_preferences/shared_preferences.dart';

final runtimeAppSettings = RuntimeAppSettings();

class RuntimeAppSettings {
  late bool isDarkMode;
  late SharedPreferences _pref;

  Future initAndLoadFromPreference() async {
    _pref = await SharedPreferences.getInstance();

    isDarkMode = _pref.getBool("isDarkMode") ?? false;
  }

  Future savePreferences() async {
    await _pref.setBool("isDarkMode", isDarkMode);
  }

  Future reset() async {
    await _pref.clear();

    await initAndLoadFromPreference();
  }
}
