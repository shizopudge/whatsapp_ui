import 'package:flutter/material.dart';

import 'colors.dart';
import 'responsive/responsive_layout.dart';
import 'screens/home/mobile_home_screen.dart';
import 'screens/home/web_home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
          colorScheme: const ColorScheme.dark(background: backgroundColor),
          useMaterial3: true),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileHomeScreen(),
        webScreenLayout: WebHomeScreen(),
      ),
    );
  }
}
