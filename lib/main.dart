import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/Provider/app_config_provider.dart';
import 'package:islami/homeScreen/hadeth/Hadeath_details_screen.dart';
import 'package:islami/homeScreen/homeScreen.dart';
import 'package:islami/homeScreen/quran/sura_details_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetials.routeName: (context) => SuraDetials(),
        HadeathDetials.routeName: (context) => HadeathDetials(),
      },
      locale: Locale(provider.appLanguage),
      theme: MyTheme.lightmode,
      themeMode: provider.appTheme,
      darkTheme: MyTheme.darkmode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}


