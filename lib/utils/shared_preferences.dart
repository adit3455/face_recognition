import 'package:get_storage/get_storage.dart';

class UserSharedPreferences {
  GetStorage box = GetStorage();

  static Future init() async {
    await GetStorage.init();
  }

  Future setConf({
    required String name,
    required String value,
  }) async {
    box.write(name, value);
    //print(box.read('phone'));
  }

  String? getConf(String name) {
    return box.read(name);
  }

  String getConfNotNull(String name) {
    var data = box.read(name);
    if (data != null) {
      return box.read(name)!;
    }
    return '';
  }

  Future clearConf({
    required String name,
  }) async {
    box.remove(name);
  }
}
