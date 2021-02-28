import 'dart:convert';

import 'package:flutter/services.dart';

abstract class ConfigReader {
  static Map<String, dynamic> _config;

  static Future<void> initialize() async {
    final configStr = await rootBundle.loadString('config/app_config.json');
    _config = json.decode(configStr);
  }

  static int get incrementAmount => _config['incrementAmount'];
  static String get secretKey => _config['secretKey'];
}