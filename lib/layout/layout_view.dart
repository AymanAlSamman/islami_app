import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/moduls/hadeth/page/hadeth_view.dart';
import 'package:islami/moduls/quran/page/quran_view.dart';
import 'package:islami/moduls/radio/page/radio_view.dart';
import 'package:islami/moduls/settings/page/settings_view.dart';
import 'package:islami/moduls/tasbeh/page/tasbeh_view.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatefulWidget {
  static const routeName = "LayoutView";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var lang = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(vm.getBackGround()),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(lang.islami),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/moshaf_icon.png'),
                  ),
                  label: lang.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/hadeth_icon.png'),
                  ),
                  label: lang.hadeth),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/sebha_icon.png'),
                  ),
                  label: lang.tasbeh),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/radio_icon.png'),
                  ),
                  label: lang.radio),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: lang.settings),
            ]),
      ),
    );
  }
}
