import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:islami/config/settings_provider.dart';

class SettingsView extends StatelessWidget {
  SettingsView({super.key});

  List<String> languageList = [
    "English",
    "عربي",
  ];

  List<String> themeList = [
    "Light",
    "Dark",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var local = AppLocalizations.of(context)!;
    var vm = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(height: 30),

          // Language
          Text(
            local.language,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),

          CustomDropdown<String>(
              items: languageList,
              initialItem: vm.currentLanguage == "en" ? "English" : "عربي",
              decoration: CustomDropdownDecoration(
                  closedSuffixIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: vm.isDark() ? Color(0xffFACC1D) : Colors.black,
                  ),
                  expandedSuffixIcon: Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: vm.isDark() ? Color(0xffFACC1D) : Colors.black,
                  ),
                  closedFillColor:
                  vm.isDark() ? Color(0xff141A2E) : Colors.white,
                  expandedFillColor:
                  vm.isDark() ? Color(0xff141A2E) : Colors.white),
              onChanged: (value) {
                if (value == "English") {
                  vm.changeLanguage("en");
                } else if (value == "عربي") {
                  vm.changeLanguage("ar");
                }
              }
              ),
          const SizedBox(height: 40),

          // Theme Mode
          Text(
            local.theme,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          CustomDropdown<String>(
            items: themeList,
            initialItem: vm.isDark() ? "Dark" : "Light",
            decoration: CustomDropdownDecoration(
                closedSuffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: vm.isDark() ? Color(0xffFACC1D) : Colors.black,
                ),
                expandedSuffixIcon: Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color: vm.isDark() ? Color(0xffFACC1D) : Colors.black,
                ),
                closedFillColor: vm.isDark() ? Color(0xff141A2E) : Colors.white,
                expandedFillColor:
                    vm.isDark() ? Color(0xff141A2E) : Colors.white),
            onChanged: (value) {
              if (value == "Dark") {
                vm.changeTheme(ThemeMode.dark);
              } else if (value == "Light") {
                vm.changeTheme(ThemeMode.light);
              }
            },
          ),
        ],
      ),
    );
  }
}
