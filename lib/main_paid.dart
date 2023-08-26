import 'package:dicogram/flavor_config.dart';
import 'package:dicogram/dicogram.dart';
import 'package:flutter/material.dart';
import 'injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  FlavorConfig(flavorType: FlavorType.paid);
  runApp(const Dicogram());
}
