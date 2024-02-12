import 'package:flutter/material.dart';
import 'package:islami/My_theme.dart';
import 'package:provider/provider.dart';

import '../../Provider/app_config_provider.dart';

class IteamHadeathDetalis extends StatelessWidget {
  String content;

  IteamHadeathDetalis({required this.content});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text(
      content,
      textAlign: TextAlign.center,
      style: provider.isDark()
          ? Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: MyTheme.yellowColor)
          : Theme.of(context).textTheme.titleSmall,
    );
  }
}
