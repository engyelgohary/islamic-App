import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/homeScreen/setting/languageBottomsheet.dart';
import 'package:islami/homeScreen/setting/themBottomsheet.dart';
import 'package:provider/provider.dart';

import '../../Provider/app_config_provider.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: provider.isDark()
                ? Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: MyTheme.yellowColor)
                : Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: provider.isDark()
                      ? MyTheme.primaryDark
                      : MyTheme.primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appLanguage == 'en'
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                    style: provider.isDark()
                        ? Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: MyTheme.yellowColor)
                        : Theme.of(context).textTheme.titleSmall,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: provider.isDark()
                ? Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: MyTheme.yellowColor)
                : Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showThemBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: provider.isDark()
                      ? MyTheme.primaryDark
                      : MyTheme.primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.isDark()
                        ? AppLocalizations.of(context)!.dark
                        : AppLocalizations.of(context)!.light,
                    style: provider.isDark()
                        ? Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: MyTheme.yellowColor)
                        : Theme.of(context).textTheme.titleSmall,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Bottomsheet(),
    );
  }

  void showThemBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemBottomsheet(),
    );
  }
}
