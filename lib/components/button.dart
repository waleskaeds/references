import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final VoidCallback route;
  final String title;
  const ButtonComponent({super.key, required this.route, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.deepPurpleAccent,
      ),
      child: TextButton(
        onPressed: route, 
        child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 15),)),
    );
  }
}