import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/config/application_theme_manager.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/moduls/hadeth/page/hadeth_details.dart';
import 'package:islami/moduls/quran/page/quran_details.dart';
import 'package:islami/moduls/splash/splash_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      theme: ApplicationThemeManager.lightTheme,
      darkTheme: ApplicationThemeManager.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: vm.currentTheme,
      locale: Locale(vm.currentLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetails.routeName: (context) => const QuranDetails(),
        HadethDetails.routeName: (context) => const HadethDetails(),
      },
    );
  }
}
