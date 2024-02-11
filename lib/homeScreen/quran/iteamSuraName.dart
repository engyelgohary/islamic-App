import 'package:flutter/material.dart';
import 'package:islami/homeScreen/quran/sura_details_screen.dart';

class IteamSuraName extends StatelessWidget {
  String nameSura;
  int index;

  IteamSuraName({required this.nameSura, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetials.routeName,
            arguments: SuraData(name: nameSura, index: index));
      },
      child: Text(
        nameSura,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
