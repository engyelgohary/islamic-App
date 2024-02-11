import 'package:flutter/material.dart';

class IteamHadeathDetalis extends StatelessWidget {
  String content;

  IteamHadeathDetalis({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
