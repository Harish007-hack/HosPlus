import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hosplus/components/Theme/dark_theme.dart';
import 'package:hosplus/components/Theme/light_theme.dart';
import 'package:hosplus/flavor_config.dart';
import 'package:hosplus/components/constants/flavor_constant.dart';
import 'package:hosplus/layouts/desktop_layout.dart';
import 'package:hosplus/layouts/mobile_layout.dart';
import 'package:hosplus/layouts/responsive_layout.dart';
import 'package:hosplus/layouts/tablet_layout.dart';

void mainCommon(FlavorConfig config) {
  flavorConfigProvider = StateProvider((ref) => config);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(flavorConfigProvider).appTitle;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: light,
      darkTheme: dark,
      home: ResponsiveLayout(
        mobileLayout: MobileLayout(title: title),
        tabletLayout: TabletLayout(title: title),
        desktopLayout: DesktopLayout(title: title),
      ),
    );
  }
}
