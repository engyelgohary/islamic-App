import 'package:flutter/material.dart';
import 'package:islami/My_theme.dart';

class SabahaTab extends StatefulWidget {
  @override
  State<SabahaTab> createState() => _SabahaTabState();
}

class _SabahaTabState extends State<SabahaTab> {
  int _counter = 0;
  String _displayText = 'سبحان الله';

  void _incrementCounter() {
    setState(() {
      _counter++;

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              InkWell(
                  onTap: _incrementCounter,
                  child: Image(
                      image: AssetImage("assets/images/head_of_seb7a.png"))),
              Container(
                  margin: EdgeInsets.only(top: 65),
                  child: Image(
                      image: AssetImage("assets/images/body_of_seb7a.png"))),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'Number of Tasbeh',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: MyTheme.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            '$_counter',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: MyTheme.primaryColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            _displayText,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold, color: MyTheme.whiteColor),
          ),
        ),
      ],
    );
  }
}
