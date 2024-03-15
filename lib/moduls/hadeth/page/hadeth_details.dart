import 'package:flutter/material.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/moduls/hadeth/page/hadeth_view.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = 'HadethDetails';

  const HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    Size mediaQuery = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    ThemeData textTheme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(vm.getBackGround()),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        body: Container(
          height: mediaQuery.height,
          width: mediaQuery.width,
          margin:
              const EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 80),
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: vm.isDark() ? Color(0xff141A2E) : Color(0xffF8F8F8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                '${args.title}',
                  style: theme.textTheme.bodyLarge),
              Divider(
                thickness: 1,
                color: theme.primaryColor,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Text('${args.content}',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 2.5,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
