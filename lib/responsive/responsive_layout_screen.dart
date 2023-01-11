import 'package:flutter/material.dart';
import 'package:picfeed/providers/user_provider.dart';
import 'package:picfeed/responsive/mobile_screen_layout.dart';
import 'package:picfeed/responsive/web_screen_layout.dart';
import 'package:picfeed/utils/dimension.dart';
import 'package:provider/provider.dart';

class ResponsiveLayout extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final webScreenLayout;
  // ignore: prefer_typing_uninitialized_variables
  final mobileScreenLayout;
  const ResponsiveLayout({
    super.key,
    required this.webScreenLayout,
    required this.mobileScreenLayout,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider _userProvider = Provider.of(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return const WebScreenLayout();
        } else {
          return const MobileScreenLayout();
        }
      },
    );
  }
}
