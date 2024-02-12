import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/homeScreen/quran/iteamSuraDetails.dart';
import 'package:provider/provider.dart';

import '../../Provider/app_config_provider.dart';

class SuraDetials extends StatefulWidget {
  static String routeName = "Sura_detials";

  @override
  State<SuraDetials> createState() => _SuraDetialsState();
}

class _SuraDetialsState extends State<SuraDetials> {
  @override
  List<String> verse = [];

  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as SuraData;
    if (verse.isEmpty) {
      loadFile(args.index);
    }
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
            "${args.name}",
            style: provider.isDark()
                ? Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: MyTheme.yellowColor)
                : Theme.of(context).textTheme.titleSmall,
          ),
        ),
        body: verse.isEmpty
            ? Center(
          child: CircularProgressIndicator(
                  color: provider.isDark()
                      ? MyTheme.yellowColor
                      : MyTheme.primaryColor,
                ),
        )
            : Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * .03,
            vertical: MediaQuery.of(context).size.width * .15,
          ),
          decoration: BoxDecoration(
                    color: provider.isDark()
                        ? MyTheme.primaryDark
                        : MyTheme.whiteColor,
                    borderRadius: BorderRadius.circular(25)),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return IteamSuraDetalis(name: verse[index], index: index);
            },
            itemCount: verse.length,
          ),
        ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = content.split("\n");
    verse = lines;
    setState(() {});
  }
}

class SuraData {
  String name;
  int index;

  SuraData({required this.name, required this.index});
}
