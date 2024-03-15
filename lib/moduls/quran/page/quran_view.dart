import 'package:flutter/material.dart';
import 'package:islami/moduls/quran/page/quran_details.dart';
import 'package:islami/moduls/quran/widget/sura_title.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> suraNames = [
      "الفاتحه",
      "البقرة",
      "آل عمران",
      "النساء",
      "المائدة",
      "الأنعام",
      "الأعراف",
      "الأنفال",
      "التوبة",
      "يونس",
      "هود",
      "يوسف",
      "الرعد",
      "إبراهيم",
      "الحجر",
      "النحل",
      "الإسراء",
      "الكهف",
      "مريم",
      "طه",
      "الأنبياء",
      "الحج",
      "المؤمنون",
      "النّور",
      "الفرقان",
      "الشعراء",
      "النّمل",
      "القصص",
      "العنكبوت",
      "الرّوم",
      "لقمان",
      "السجدة",
      "الأحزاب",
      "سبأ",
      "فاطر",
      "يس",
      "الصافات",
      "ص",
      "الزمر",
      "غافر",
      "فصّلت",
      "الشورى",
      "الزخرف",
      "الدّخان",
      "الجاثية",
      "الأحقاف",
      "محمد",
      "الفتح",
      "الحجرات",
      "ق",
      "الذاريات",
      "الطور",
      "النجم",
      "القمر",
      "الرحمن",
      "الواقعة",
      "الحديد",
      "المجادلة",
      "الحشر",
      "الممتحنة",
      "الصف",
      "الجمعة",
      "المنافقون",
      "التغابن",
      "الطلاق",
      "التحريم",
      "الملك",
      "القلم",
      "الحاقة",
      "المعارج",
      "نوح",
      "الجن",
      "المزّمّل",
      "المدّثر",
      "القيامة",
      "الإنسان",
      "المرسلات",
      "النبأ",
      "النازعات",
      "عبس",
      "التكوير",
      "الإنفطار",
      "المطفّفين",
      "الإنشقاق",
      "البروج",
      "الطارق",
      "الأعلى",
      "الغاشية",
      "الفجر",
      "البلد",
      "الشمس",
      "الليل",
      "الضحى",
      "الشرح",
      "التين",
      "العلق",
      "القدر",
      "البينة",
      "الزلزلة",
      "العاديات",
      "القارعة",
      "التكاثر",
      "العصر",
      "الهمزة",
      "الفيل",
      "قريش",
      "الماعون",
      "الكوثر",
      "الكافرون",
      "النصر",
      "المسد",
      "الإخلاص",
      "الفلق",
      "الناس"
    ];

    Size mediaQuery = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    ThemeData textTheme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          'assets/images/quran_logo.png',
          height: mediaQuery.height * 0.2,
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'رقم السورة',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Container(
              height: 35,
              width: 1,
              color: theme.primaryColor,
            ),
            Expanded(
              child: Text(
                "اسم السورة",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, QuranDetails.routeName,
                    arguments:
                        SuraDetails(suraNames[index], (index + 1).toString()));
              },
              child: SuraTitle(
                suraNames: suraNames[index],
                suraNumber: (index + 1).toString(),
              ),
            ),
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }
}

class SuraDetails {
  final String suraNames;
  final String suraNumber;

  SuraDetails(this.suraNames, this.suraNumber);
}
