import 'package:Menyu/lang_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:Menyu/MyHome.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: [
      Locale('en','EN'),
      Locale('ru','RU'),
      Locale('uz','UZ'),
    ],
    path: 'assets/transilation',
    child: MultiProvider(
        providers: [ChangeNotifierProvider(create: (_)=>LongProvider()),],
    child: const MyApp()),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(fontFamily: "Manrope"),
      title: "Shoxona Jo'ja",
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
