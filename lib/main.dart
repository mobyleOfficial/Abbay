import 'package:abbay/infrastructure/di/abbay_general_provider.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'presentation/app.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  Hive.init((await getApplicationDocumentsDirectory()).path);

  runApp(
    AbbayGeneralProvider(
      (_) => const MyApp(),
    ),
  );
}
