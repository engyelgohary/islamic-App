import 'package:flutter/material.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/homeScreen/hadeth/hadeth.dart';
import 'package:islami/homeScreen/hadeth/iteamHadeathDetails.dart';
import 'package:provider/provider.dart';

import '../../Provider/app_config_provider.dart';

class HadeathDetials extends StatefulWidget {
  static String routeName = "Hadeath_detials";

  @override
  State<HadeathDetials> createState() => _HadeathDetialsState();
}

class _HadeathDetialsState extends State<HadeathDetials> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as Hadeath;
    return Stack(children: [
      provider.isDark()
          ? Image.asset(
              "assets/images/backgrounddark.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              "assets/images/main_background.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            "${args.title}",
            style: provider.isDark()
                ? Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: MyTheme.yellowColor)
                : Theme.of(context).textTheme.titleSmall,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * .03,
            vertical: MediaQuery.of(context).size.width * .15,
          ),
          decoration: BoxDecoration(
              color:
                  provider.isDark() ? MyTheme.primaryDark : MyTheme.whiteColor,
              borderRadius: BorderRadius.circular(25)),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return IteamHadeathDetalis(
                content: args.content[index],
              );
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    ]);
  }
}
