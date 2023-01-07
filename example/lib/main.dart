import 'package:flutter/material.dart';
import 'package:iconoir_icons/iconoir_icons.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: const IconThemeData(
          color: Colors.red,
        ),
      ),
      home: const MyHomePage(title: 'HeroIcons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: IconTheme(
          data: const IconThemeData(color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Iconoir(
                IconoirIcons.homeSimple,
                color: Colors.blue,
                size: 36,
              )
            ],
          ),
        ),
      ),
    );
  }
}
