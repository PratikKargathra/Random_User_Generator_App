import 'package:flutter/material.dart';
import 'package:random_userdata_app/pages/UserDataPage.dart';
import 'pages/Homepage.dart';

void main(){
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => const Homepage(),
        "datapage":(context) => const DataPage(),
      },
    );
  }
}

