import 'package:flutter/material.dart';
import 'package:islam/settings/language.dart';
import 'package:islam/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsTap extends StatelessWidget {
  List<Language> languages = [
    Language(name: 'English', code: 'en'),
    Language(name: 'العربية', code: 'ar'),
  ];
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dark Mode',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Switch(
                  value:
                      settingsProvider.themeMode == ThemeMode.light ? false : true,
                  onChanged: (isDark) {
                    settingsProvider.changeTheme(isDark? ThemeMode.dark : ThemeMode.light);
                  })
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Language',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              DropdownButton<Language>(
                  value: languages.firstWhere((language) => language.code == settingsProvider.languageCode),
                  items: languages
                      .map((language) => DropdownMenuItem<Language>(
                          value: language, child: Text(
                            language.name,
                            style: Theme.of(context).textTheme.titleLarge,
                            )))
                      .toList(),
                  onChanged: (selectedLanguage) {
                    if (selectedLanguage != null) {
                      settingsProvider.changeLanguage(selectedLanguage.code);
                    }
                  },
                  borderRadius: BorderRadius.circular(20),
                  )
            ],
          ),
        )
      ],
    );
  }
}
