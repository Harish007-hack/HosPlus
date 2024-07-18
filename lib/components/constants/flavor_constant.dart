import 'package:flutter_riverpod/flutter_riverpod.dart';

const String? appFlavor = String.fromEnvironment('FLUTTER_APP_FLAVOR') != '' ?
  String.fromEnvironment('FLUTTER_APP_FLAVOR') : null;

late StateProvider flavorConfigProvider;