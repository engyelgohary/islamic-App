import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          height: 60,
        ),
        Image(image: AssetImage("assets/images/Group 5.png")),
      ],
    );
  }
}
