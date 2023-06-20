import 'package:flutter/material.dart';
import 'package:references/pages/login.dart';

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
        colorScheme: Theme.of(context)
            .colorScheme
            .copyWith(primary: const Color(0xff2273e1),)
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
    return const Login();
    // Scaffold(
    //   body: ListView(
    //     children: [
    //       ButtonComponent(
    //         title: "User",
    //         route: () {
    //           Navigator.push(context, MaterialPageRoute(builder: (context) => const UserProfile(),));
    //         },
    //       ),
    //       ButtonComponent(
    //         title: "User 1",
    //         route: () {
    //           Navigator.push(context, MaterialPageRoute(builder: (context) => const UserProfileX(),));
    //         },
    //       ),
    //       ButtonComponent(
    //         title: "Login",
    //         route: () {
    //           Navigator.push(context, MaterialPageRoute(builder: (context) => const Login(),));
    //         },
    //       ),
    //       ButtonComponent(
    //         title: "Login 1",
    //         route: () {
    //           Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginX(),));
    //         },
    //       ),
    //       // ButtonComponent(
    //       //   title: "Login 2",
    //       //   route: () {
    //       //     Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginY(),));
    //       //   },
    //       // ),
    //     ],
    //   ),
    // );
  }
}
