import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/app_theme.dart';
import 'package:islam/quran/quran_tap.dart';

class QuranContent extends StatefulWidget {
  static const String routeName = '/quran_content';

  @override
  State<QuranContent> createState() => _QuranContentState();
}

class _QuranContentState extends State<QuranContent> {
  List<String> ayat = [];
  late SuraContentArgs suraContentArgs;

  @override
  Widget build(BuildContext context) {
    suraContentArgs =
        ModalRoute.of(context)!.settings.arguments as SuraContentArgs;

    if(ayat.isEmpty){
      loudFile();
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/backgroundimage.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              suraContentArgs.suraName,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.sizeOf(context).height * 0.06,
              horizontal: 30,
            ),
            child: ListView.builder(
              itemBuilder: (_, index) => Text(
                ayat[index],
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              itemCount: ayat.length,
            ),
          )),
    );
  }

  Future<void> loudFile() async {
    String ayat_sura = await rootBundle
        .loadString('assets/files/${suraContentArgs.index+1}.txt');
    ayat = ayat_sura.split('/r/n');
    setState(() {});
  }
}
