import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static String token = '';
  static writeSecureData(String value) async {
    const FlutterSecureStorage storage = FlutterSecureStorage();

    await storage.write(key: 'auth_token', value: value);
  }

  static readToken() async {
    const FlutterSecureStorage storage = FlutterSecureStorage();

    token = await storage.read(key: 'auth_token') ?? '';
    return token;
  }
}
