import 'package:flutter/material.dart';
import 'package:islam/hadeth/hadeth_content.dart';
import 'package:islam/app_theme.dart';


class HadethMhtwa extends StatelessWidget {
  static const String routeName = '/hadeth_mhtwa';
  late HadethContent hadethContent;
  @override
  Widget build(BuildContext context) {
    hadethContent = ModalRoute.of(context)!.settings.arguments as HadethContent;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backgroundimage.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              hadethContent.name,
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
                hadethContent.content[index],
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              itemCount: hadethContent.content.length,
            ),
          )),);
  }
}
