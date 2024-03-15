import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/moduls/quran/page/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = 'SuraDetails';

  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var textTheme = Theme.of(context);
    if (versesList.isEmpty) loadData(args.suraNumber);
    var vm = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(vm.getBackGround()),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        body: Container(
          height: mediaQuery.height,
          width: mediaQuery.width,
          margin:
              const EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 80),
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: vm.isDark()
                ? Color(0xff141A2E).withOpacity(0.8)
                : Color(0xffF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'سورة${args.suraNames}',
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle_filled_rounded,
                    size: 35,
                    color: vm.isDark() ? Color(0xffFACC1D) : Colors.black,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: theme.primaryColor,
              ),
              if (versesList.isEmpty)
                Center(
                  child: CircularProgressIndicator(
                    color: theme.primaryColor,
                  ),
                ),
              if (versesList.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        Text('{${index + 1} ${versesList[index]}',
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 2.5,
                            )),
                    itemCount: versesList.length,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future loadData(String suraNumber) async {
    String suraContent =
        await rootBundle.loadString('assets/files/$suraNumber.txt');
    versesList = suraContent.split('\n');
    setState(() {});
  }
}
