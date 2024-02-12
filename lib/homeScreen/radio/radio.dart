import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/app_config_provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage("assets/images/radio_image.png")),
        SizedBox(
          height: 60,
        ),
        Text(
          "اذاعه القران الكريم",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 70,
        ),
        provider.isDark()
            ? Image(image: AssetImage("assets/images/Group 4.png"))
            : Image(image: AssetImage("assets/images/Group 5.png")),
      ],
    );
  }
}
