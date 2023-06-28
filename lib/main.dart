import 'package:flutter/material.dart';
import 'package:references/pages/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Rubik',
        colorScheme: Theme.of(context)
            .colorScheme
            .copyWith(
              primary: Colors.black,
              secondary: Colors.deepPurpleAccent
            )
            .copyWith(background: Colors.grey),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return const ListPage();
  }
}
