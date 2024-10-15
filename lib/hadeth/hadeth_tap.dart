import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/hadeth/hadeth_content.dart';
import 'package:islam/hadeth/hadeth_mhtwa.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<String> hadethStrings = [];
  List<HadethContent> fullHadeth = [];
  @override
  Widget build(BuildContext context) {
    if (fullHadeth.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Image(
          image: AssetImage('assets/images/hadith_header.png'),
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        Divider(
          height: 10,
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          'الأحاديث',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Divider(
          height: 10,
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (_, index) {
              return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      HadethMhtwa.routeName,
                      arguments: fullHadeth[index],
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: Text(
                      '${fullHadeth[index].name}',
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                  ));
            },
            itemCount: fullHadeth.length,
          ),
        )
      ],
    );
  }

  Future<void> loadFile() async {
    String hadeth_file =
        await rootBundle.loadString('assets/files/ahadeth.txt');

    hadethStrings = hadeth_file.split('#');
    fullHadeth = hadethStrings.map((hadethStrings) {
      List<String> hadethLines = hadethStrings.trim().split('\n');
      String title = hadethLines.first;
      List<String> content = hadethLines.sublist(1, hadethLines.length);
      return HadethContent(name: title, content: content);
    }).toList();
    setState(() {});
  }
}
