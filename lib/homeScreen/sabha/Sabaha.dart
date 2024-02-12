import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/My_theme.dart';
import 'package:provider/provider.dart';

import '../../Provider/app_config_provider.dart';

class SabahaTab extends StatefulWidget {
  @override
  State<SabahaTab> createState() => _SabahaTabState();
}

class _SabahaTabState extends State<SabahaTab> {
  int _counter = 0;
  double turns = 0.0;
  String _displayText = 'سبحان الله';

  void _incrementCounter() {
    setState(() {
      _counter++;
      turns += 1 / 28;

      if (_counter == 33) {
        _displayText = 'الله اكبر';
      }

      if (_counter == 66) {
        _displayText = 'الحمدالله';
      }

      if (_counter == 99) {
        _counter = 0;
        _displayText = 'سبحان الله';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              InkWell(
                  onTap: _incrementCounter,
                  child: provider.isDark()
                      ? Image(
                          image: AssetImage(
                              "assets/images/dark_head_of_seb7a.png"))
                      : Image(
                          image:
                              AssetImage("assets/images/head_of_seb7a.png"))),
              Container(
                  margin: EdgeInsets.only(top: 65),
                  child: AnimatedRotation(
                    turns: turns,
                    duration: Duration(seconds: 1),
                    child: provider.isDark()
                        ? Image(
                            image: AssetImage(
                                "assets/images/dark_body_of_seb7a.png"))
                        : Image(
                            image:
                                AssetImage("assets/images/body_of_seb7a.png")),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          AppLocalizations.of(context)!.num_of_sabaha,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color:
                provider.isDark() ? MyTheme.primaryDark : MyTheme.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            '$_counter',
            style: provider.isDark()
                ? Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold, color: MyTheme.yellowColor)
                : Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold, color: MyTheme.whiteColor),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color:
                provider.isDark() ? MyTheme.yellowColor : MyTheme.primaryColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            _displayText,
            style: provider.isDark()
                ? Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold, color: MyTheme.primaryDark)
                : Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold, color: MyTheme.whiteColor),
          ),
        ),
      ],
    );
  }
}
