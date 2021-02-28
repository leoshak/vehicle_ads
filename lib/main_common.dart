import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vehicle_ads/ads_app.dart';
import 'package:vehicle_ads/config_reader.dart';
import 'package:vehicle_ads/environment.dart';
import 'package:vehicle_ads/providers.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor = Colors.yellow;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.red;
      break;
    case Environment.prod:
      primaryColor = Colors.green;
      break;
  }

  runApp(ProviderScope(child: AdsApp(), overrides: [
    themeProvider.overrideWithProvider(Provider<Color>((ref) => primaryColor)),
  ]));
}
