import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/moduls/hadeth/page/hadeth_details.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethData> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    ThemeData textTheme = Theme.of(context);
    if (allHadethContent.isEmpty) loadData();
    return Column(
      children: [
        Image.asset(
          'assets/images/hadeth_header.png',
          height: mediaQuery.height * 0.2,
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "الاحاديث",
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethDetails.routeName,
                    arguments: allHadethContent[index]);
              },
              child: Text(
                allHadethContent[index].title,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: allHadethContent.length,
          ),
        ),
      ],
    );
  }

  Future loadData() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethList = content.split('#');
    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadeth = allHadethList[i].trim();
      int titleIndex = singleHadeth.indexOf('\n');
      String title = singleHadeth.substring(0, titleIndex);
      String content = singleHadeth.substring(titleIndex + 1);
      HadethData hadethData = HadethData(title, content);
      allHadethContent.add(hadethData);
      setState(() {});
    }
  }
}

class HadethData {
  final String title;
  final String content;

  HadethData(this.title, this.content);
}
