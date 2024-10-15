import 'package:flutter/material.dart';
import 'package:islam/app_theme.dart';
import 'package:islam/hadeth/hadeth_mhtwa.dart';
import 'package:islam/home_screen.dart';
import 'package:islam/quran/quran_content.dart';
import 'package:islam/settings/settings_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranContent.routeName: (_) => QuranContent(), 
        HadethMhtwa.routeName: (_) => HadethMhtwa()
      },
      initialRoute: HomeScreen.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
     themeMode: settingsProvider.themeMode,
      home: HomeScreen(),
    );
  }
}
