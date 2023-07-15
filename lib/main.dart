import 'package:flutter/material.dart';
import 'package:json/controller/geeta_controller.dart';
import 'package:json/controller/json_controller.dart';
import 'package:json/utils/routes_utils.dart';
import 'package:json/views/screens/chapter_page.dart';
import 'package:json/views/screens/homepage.dart';
import 'package:json/views/screens/verse.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GeetaController()),
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
      routes: {
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.chap: (context) => const ChapterPage(),
        MyRoutes.verse: (context) => const Verse(),
      },
    );
  }
}
