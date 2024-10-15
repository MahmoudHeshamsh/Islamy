import 'package:flutter/material.dart';
import 'package:islam/app_theme.dart';
import 'package:islam/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioTap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Column(
      children: [
        Image(
          image: AssetImage('assets/images/radio_image.png'),
          height: MediaQuery.of(context).size.height* 0.5,
          ),
        Text(
            'إذاعة القرآن الكريم',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 30.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed:(){},
              icon: Icon(
                Icons.skip_previous,
                color: settingsProvider.isDark? AppTheme.gold : AppTheme.lightPrimary,
                ),
              ),
            IconButton(
              onPressed:(){},
              icon: Icon(Icons.play_arrow,
                color: settingsProvider.isDark? AppTheme.gold : AppTheme.lightPrimary,
              ),
              style: ButtonStyle(
                  iconSize: MaterialStateProperty.all(50.0),
              ),
              ),
            IconButton(
              onPressed:(){},
              icon: Icon(Icons.skip_next,
                color: settingsProvider.isDark? AppTheme.gold : AppTheme.lightPrimary,
              ),
              )
          ],
        )
      ],
    );
  }
}