import 'package:flutter/material.dart';
import 'package:islam/hadeth/hadeth_content.dart';
import 'package:islam/app_theme.dart';
import 'package:islam/settings/settings_provider.dart';
import 'package:provider/provider.dart';


class HadethMhtwa extends StatelessWidget {
  static const String routeName = '/hadeth_mhtwa';
  late HadethContent hadethContent;
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    hadethContent = ModalRoute.of(context)!.settings.arguments as HadethContent;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/${settingsProvider.backgroundImage}'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              hadethContent.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: settingsProvider.isDark ? AppTheme.darkPrimary : AppTheme.white,
              borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.sizeOf(context).height * 0.06,
              horizontal: 30,
            ),
            child: ListView.builder(
              itemBuilder: (_, index) => Text(
                hadethContent.content[index],
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              itemCount: hadethContent.content.length,
            ),
          )),);
  }
}
