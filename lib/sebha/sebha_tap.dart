import 'package:flutter/material.dart';

class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int num_of_tasbeh = 0;
  List<String> tasbeeh = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله أكبر",
    "لا حول ولا قوة إلا بالله",
    "اللهم صلِّ على محمد وعلى آل محمد",
    "سبحان الله وبحمده سبحان الله العظيم",
    "الحمد لله رب العالمين",
    "اللهم اغفر لي وارحمني واهدني وعافني",
    "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير",
    "سبحان الذي خلق السماوات والأرض",
    "الحمد لله الذي جعلنا من المسلمين",
    "اللهم إني أسألك الجنة وما قرب إليها من قول أو عمل",
    "اللهم إني أعوذ بك من النار وما قرب إليها من قول أو عمل",
    "اللهم ارزقني علماً نافعاً وعملاً صالحاً",
    "اللهم استر عوراتي وآمن روعاتي",
    "اللهم ارزقني قلباً سليماً ولساناً صادقاً",
    "اللهم اجعلني من الصالحين",
    "اللهم اجعلني من المتقين",
    "اللهم اجعل قبرنا روضة من رياض الجنة"
  ];
  int tasbeeh_index = 0;

  @override
  Widget build(BuildContext context) {
    changetasbeh();
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                num_of_tasbeh++;
              });
            },
            child: Image(
              image: AssetImage('assets/images/tsbeeh.png'),
              height: MediaQuery.of(context).size.height * 0.40,
            ),
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                num_of_tasbeh = 0;
              });
            },
            child: Text(
              '${num_of_tasbeh}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 214, 183, 139),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (tasbeeh_index < tasbeeh.length - 1) {
                  tasbeeh_index++;
                } else {
                  tasbeeh_index = 0;
                }
              });
            },
            child: Text(
              '${tasbeeh[tasbeeh_index]}',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0)),
          ),
        ],
      ),
    );
  }

  void changetasbeh() {
    if (num_of_tasbeh != 0) {
      setState(() {
        if (num_of_tasbeh % 33 == 0) {
          tasbeeh_index++;
        }
      });
    }
  }
}
