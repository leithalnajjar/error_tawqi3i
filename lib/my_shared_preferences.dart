import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  static late SharedPreferences _sharedPreferences;

  init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  void clearProfile() {}

  String get accessToken => _sharedPreferences.getString(keyAccessToken) ?? "";

  set accessToken(String value) {
    _sharedPreferences.setString(keyAccessToken, value);
  }
}

final mySharedPreferences = MySharedPreferences();

const String keyAccessToken = "key_access_token";
