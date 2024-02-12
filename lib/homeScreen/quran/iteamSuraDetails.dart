import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../My_theme.dart';
import '../../Provider/app_config_provider.dart';

class IteamSuraDetalis extends StatelessWidget {
  String name;
  int index;

  IteamSuraDetalis({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Text(
      '$name {${index + 1}}',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: provider.isDark()
          ? Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: MyTheme.yellowColor)
          : Theme.of(context).textTheme.titleSmall,
    );
  }
}
