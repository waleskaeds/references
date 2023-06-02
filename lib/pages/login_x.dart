import 'package:flutter/material.dart';

class LoginX extends StatefulWidget {
  const LoginX({super.key});

  @override
  State<LoginX> createState() => _LoginXState();
}

class _LoginXState extends State<LoginX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 5),
                  child: Image.asset('assets/images/grupo_malwee_logo.png'),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Image.asset('assets/images/grupo_malwee_letra.png'),
                ),
            ]),
          ),
          Container(
            width: double.infinity,
            height: 650,
            decoration: BoxDecoration(
              color: const Color(0xff2273e1),
              borderRadius: BorderRadius.circular(45)
            ),
            child: Column(
              children: [
                const SizedBox(height: 55,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail, color: Colors.white),
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                fillColor: Colors.amber,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                )),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key, color: Colors.white),
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                fillColor: Colors.amber,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                )),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                )),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 5),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Colors.white,
            ),
            child: TextButton(
              onPressed: (){}, 
              child: const Text(
                "Entrar ", 
                style: TextStyle(color: Color(0xff2273e1), fontSize: 15),)),
          ),
          TextButton(onPressed: (){}, child: const Text(
            "Esqueceu sua senha? Clique aqui",
            style: TextStyle(
              color: Colors.white,
              fontSize: 13
            ),
          ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}