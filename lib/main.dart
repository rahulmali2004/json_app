import 'package:flutter/material.dart';
import 'package:json/controller/gitacontroller.dart';
import 'package:json/controller/json_controller.dart';
import 'package:json/utils/routes_utils.dart';
import 'package:json/views/screens/gitapage.dart';
import 'package:json/views/screens/homepage.dart';
import 'package:json/views/screens/gitapage2.dart';
import 'package:json/views/screens/splashscrren.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => gitacontroller()),
        ChangeNotifierProvider(create: (context) => JSONController()),
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: MyRoutes.splashscrren,
      routes: {
        MyRoutes.splashscrren: (context) => const splashscrren(),
        MyRoutes.homepage: (context) => const HomePage(),
        MyRoutes.gitapage: (context) => const gitapage(),
        MyRoutes.gitapage2: (context) => const gitapage2(),
      },
    );
  }
}
