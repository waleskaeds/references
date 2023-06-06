import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 5),
                      child: Image.asset('assets/images/grupo_malwee_logo.png'),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Image.asset('assets/images/grupo_malwee_letra.png'),
                    ),
                  ],
                )
              ] 
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail, color: Colors.white),
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Rubik',
                ),
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
                  color: Colors.white,
                  fontFamily: 'Rubik',
                ),
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
              child: Text(
                "Entrar ", 
                style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 15, fontFamily: 'Rubik',),)),
          ),
          TextButton(onPressed: (){}, child: const Text(
            "Esqueceu sua senha? Clique aqui",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Rubik',
              fontSize: 13
            ),
          ))
        ],
      ),
    );
  }
}