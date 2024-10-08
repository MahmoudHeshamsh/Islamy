import 'package:flutter/material.dart';
import 'package:islam/hadeth/hadeth_tap.dart';
import 'package:islam/quran/quran_tap.dart';
import 'package:islam/radio/radio_tap.dart';
import 'package:islam/sebha/sebha_tap.dart';
import 'package:islam/settings/settings_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void selectItem(int index) {
    setState(() {
      current_Index = index;
      print(current_Index);
    });
  }

  List<Widget> tabs = [
    RadioTap(),
    SebhaTap(),
    HadethTap(),
    QuranTap(),
    SettingsTap(),
  ];

  int current_Index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/backgroundimage.png'),
          fit: BoxFit.fill
          ),
        
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'إسلامي'
          ),
        ),
        body: tabs[current_Index],
        bottomNavigationBar: BottomNavigationBar(
          onTap: selectItem,
          currentIndex: current_Index,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
