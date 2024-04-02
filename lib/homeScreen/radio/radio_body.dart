import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/cubit/radios_cubit.dart';
import 'package:provider/provider.dart';

import '../../My_theme.dart';
import '../../Provider/app_config_provider.dart';

class RadioBody extends StatefulWidget {
  @override
  State<RadioBody> createState() => _RadioBodyState();
}

class _RadioBodyState extends State<RadioBody> {
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<RadiosCubit>(context);
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage("assets/images/radio_image.png")),
        SizedBox(
          height: 60,
        ),
        Text(
          cubit.currentRadio!.name ?? "",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 70,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    cubit.previousRadio();
                  },
                  icon: Icon(
                    Icons.skip_previous_rounded,
                    size: 40,
                    color: provider.isDark()
                        ? MyTheme.yellowColor
                        : MyTheme.primaryColor,
                  )),
              IconButton(
                  onPressed: () {
                    cubit.clickOnPlay();
                  },
                  icon: Icon(
                    cubit.isPlay ? Icons.pause_sharp : Icons.play_arrow_rounded,
                    size: 40,
                    color: provider.isDark()
                        ? MyTheme.yellowColor
                        : MyTheme.primaryColor,
                  )),
              IconButton(
                  onPressed: () {
                    cubit.nextRadio();
                  },
                  icon: Icon(
                    Icons.skip_next_rounded,
                    size: 40,
                    color: provider.isDark()
                        ? MyTheme.yellowColor
                        : MyTheme.primaryColor,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
