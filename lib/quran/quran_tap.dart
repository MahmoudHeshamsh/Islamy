import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islam/quran/quran_content.dart';
import 'package:islam/settings/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:islam/app_theme.dart';


class QuranTap extends StatelessWidget {
  List<String> suraNames = [
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
  List<String> num_ayat = [
    "7", "286", "200", "176", "120", "165", "206", "75", "129", "109",
    "123", "111", "43", "52", "99", "128", "111", "110", "98", "135",
    "112", "78", "118", "64", "77", "227", "93", "88", "69", "60",
    "34", "30", "73", "54", "45", "83", "182", "88", "75", "85",
    "54", "53", "89", "59", "37", "35", "38", "29", "18", "45",
    "60", "49", "62", "55", "78", "96", "29", "22", "24", "13",
    "14", "11", "11", "18", "12", "12", "30", "52", "52", "44",
    "28", "28", "20", "56", "40", "31", "50", "40", "46", "42",
    "29", "19", "36", "25", "22", "17", "19", "26", "30", "20",
    "15", "21", "11", "8", "8", "19", "5", "8", "8", "11",
    "11", "8", "3", "9", "5", "4", "7", "3", "6", "3",
    "5", "4", "5", "6"
  ];

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Column(
      children: [
        Image.asset(
          'assets/images/quran_header_icn.png',
          height: MediaQuery.sizeOf(context).height * 0.25,
        ),
        Divider(
          height: 10,
          color: settingsProvider.isDark? AppTheme.gold : AppTheme.lightPrimary,
          thickness: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsetsDirectional.only(start: MediaQuery.of(context).size.width * 0.09,),

              child: Text(
                'عدد الآيات',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(end: MediaQuery.of(context).size.width * 0.09,),
              child: Text(
                'إسم السورة',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ],
        ),
        Divider(
          height: 10,
          color: settingsProvider.isDark? AppTheme.gold : AppTheme.lightPrimary,
          thickness: 3,
        ),
        Expanded(
          child: Padding(
             padding: EdgeInsetsDirectional.only(end: MediaQuery.of(context).size.width * 0.15, top: 5.0),
            child: ListView.separated(
              itemBuilder: (_, index) => InkWell(
                onTap: () => Navigator.of(context).pushNamed(
                  QuranContent.routeName,
                  arguments:
                      SuraContentArgs(suraName: suraNames[index], index: index), 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
              padding: EdgeInsetsDirectional.only(start: MediaQuery.of(context).size.width * 0.15, top: 5.0),
                      child: Text(
                        num_ayat[index],
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    Text(
                      suraNames[index],
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              itemCount: num_ayat.length,
              separatorBuilder: (_, __) => SizedBox(
                height: 10,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SuraContentArgs {
  String suraName;
  int index;

  SuraContentArgs({required this.suraName, required this.index});
}
