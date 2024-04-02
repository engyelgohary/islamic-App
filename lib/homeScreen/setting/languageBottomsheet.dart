import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/My_theme.dart';
import 'package:provider/provider.dart';

import '../../Provider/app_config_provider.dart';

class Bottomsheet extends StatefulWidget {
  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height * .19,
      color: provider.isDark() ? MyTheme.primaryColor : MyTheme.whiteColor,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage("en");
              },
              child: provider.appLanguage == ('en')
                  ? selectedlanguage(AppLocalizations.of(context)!.english)
                  : unselectedlanguage(AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                provider.changeLanguage("ar");
              },
              child: provider.appLanguage == ('ar')
                  ? selectedlanguage(AppLocalizations.of(context)!.arabic)
                  : unselectedlanguage(AppLocalizations.of(context)!.arabic))
        ],
      ),
    );
  }

  Widget selectedlanguage(String text) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: provider.isDark()
              ? Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: MyTheme.primaryDark, fontWeight: FontWeight.bold)
              : Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: MyTheme.primaryColor, fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.check,
          color: provider.isDark() ? MyTheme.primaryDark : MyTheme.primaryColor,
          size: 30,
        )
      ],
    );
  }

  Widget unselectedlanguage(String text) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text(
      text,
      style: provider.isDark()
          ? Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: MyTheme.yellowColor)
          : Theme.of(context).textTheme.titleSmall,
    );
  }
}
