import 'package:flutter/material.dart';
import 'package:for_test/clone/clone_settings.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SafeArea(child: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: CloneSettings.primaryColor,title: const Text(CloneSettings.appName)),
        body: Stack(
      children: [
         Lottie.asset('assets/lotti/cat.json', fit: BoxFit.fill),
        // Image.asset('assets/lotti/splash.gif', fit: BoxFit.fill),
        Container(color: Colors.black.withOpacity(.1)),
        Center(child: Text(CloneSettings.appName, style: const TextStyle(fontSize: 55 ,color: Colors.white))),
      ],
    ));
  }
}
