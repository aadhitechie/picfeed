import 'package:flutter/material.dart';
import 'package:picfeed/responsive/mobile_screen_layout.dart';
import 'package:picfeed/responsive/responsive_layout_screen.dart';
import 'package:picfeed/responsive/web_screen_layout.dart';
import 'package:picfeed/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Picfeed',
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: const ResponsiveLayout(
            webScreenLayout: WebScreenLayout(),
            mobileScreenLayout: MobileScreenLayout()));
  }
}
