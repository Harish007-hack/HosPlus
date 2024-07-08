import 'package:flutter/material.dart';
import 'package:hosplus/flavor_config.dart';
import 'package:hosplus/main_common.dart';

void main(List<String> args) {
  const clientConfig = FlavorConfig(
    appTitle: "Hosplus",
    checker: Text("This is Hosplus for Clients")
  );
  mainCommon(clientConfig);
}
