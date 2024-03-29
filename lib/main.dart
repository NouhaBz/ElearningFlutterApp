
import 'package:flutter/material.dart';
import 'package:flutter_application/logsign.dart';
import 'package:flutter_application/splash.dart';
//import 'package:flutter_application/admin/adminDashBourd.dart';
//import 'package:flutter_application/model/bottomNav.dart';
//import 'package:flutter_application/admin/collect.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Flutter Demo',
 theme: ThemeData(backgroundColor: Colors.white
 ),
 home: const splash(),
 );
 }
}







/*
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

var  selectedType;
  final List<String> _accountType = <String>[
    'Savings',
    'Deposit',
    'Checking',
    'Brokerage'
  ];
  
  var width=20;
class MyApp extends StatelessWidget {
  static const String title = 'Navigation Drawer';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MainPage(),
      );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
 
}*/