import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  static const routeName = '/';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(LayoutView.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    return Scaffold(
      body: Image.asset(vm.currentTheme == ThemeMode.dark
          ? "assets/images/dark_splash_screen.png"
          : 'assets/images/splash_screen.png'),
    );
  }
}
