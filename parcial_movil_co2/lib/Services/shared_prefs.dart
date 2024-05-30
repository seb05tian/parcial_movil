import 'package:shared_preferences/shared_preferences.dart';

class UserPrefs {
  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static final UserPrefs _instance = UserPrefs._internal();

  factory UserPrefs() {
    return _instance;
  }

  UserPrefs._internal();

//datos del user
  late String _password;
  late String _email;
  late String _username;
  late String _userType;
  late String _image;

  String get password => _prefs.getString('password') ?? "";
  set password(String value) => _prefs.setString('password', value);

  String get email => _prefs.getString('email') ?? "";
  set email(String value) => _prefs.setString('email', value);

  String get username => _prefs.getString('username') ?? "";
  set username(String value) => _prefs.setString('username', value);

  String get userType => _prefs.getString('userType') ?? "";
  set userType(String value) => _prefs.setString('userType', value);

  String get image => _prefs.getString('image') ?? "";
  set image(String value) => _prefs.setString('image', value);
}
