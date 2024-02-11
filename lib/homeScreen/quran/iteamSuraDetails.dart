import 'package:flutter/material.dart';

class IteamSuraDetalis extends StatelessWidget {
  String name;
  int index;

  IteamSuraDetalis({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name {${index + 1}}',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
