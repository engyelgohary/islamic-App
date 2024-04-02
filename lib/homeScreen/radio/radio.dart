import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/cubit/radios_cubit.dart';
import 'package:islami/homeScreen/radio/radio_body.dart';
import 'package:provider/provider.dart';

import '../../My_theme.dart';
import '../../Provider/app_config_provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return BlocProvider(
      create: (context) => RadiosCubit(),
      child: BlocBuilder<RadiosCubit, RadiosState>(
        builder: (context, state) {
          switch (state) {
            case RadiosInitial():
              return Center(
                  child: CircularProgressIndicator(
                      color: provider.isDark()
                          ? MyTheme.yellowColor
                          : MyTheme.primaryColor));
            case RadioSuccessState():
              return RadioBody();
            case RadioErrorState():
              return Text(state.error);
          }
        },
      ),
    );
  }
}
