import 'package:flutter/material.dart';

class LoginWhite extends StatelessWidget {
  const LoginWhite({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: (height / 5) * 2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(46), bottomLeft: Radius.circular(46)),
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(49), bottomLeft: Radius.circular(49)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Image.asset('assets/images/grupo_malwee_logo.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                      child: Image.asset('assets/images/grupo_malwee_letra.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail, color: Colors.black),
                labelText: "E-mail",
                hintText: "email@email.com",
                labelStyle: TextStyle(
                  fontFamily: 'Rubik',
                ),
                hintStyle: TextStyle(
                  fontFamily: 'Rubik',
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  width: 2,
                )),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  width: 2,
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key, color: Colors.black),
                labelText: "Senha",
                hintText: "Insira aqui sua senha",
                labelStyle: TextStyle(
                  fontFamily: 'Rubik',
                ),
                hintStyle: TextStyle(
                  fontFamily: 'Rubik',
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  width: 2,
                )),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  width: 2,
                )),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black,
            ),
            child: TextButton(
              onPressed: (){}, 
              child: const Text(
                "Entrar ", 
                style: TextStyle(
                  color: Colors.white,//Theme.of(context).colorScheme.primary, 
                  fontSize: 15, 
                  fontFamily: 'Rubik',
                ),
              )
            ),
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text(
            "Esqueceu sua senha? Clique aqui",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Rubik',
              fontSize: 13
            ),)
          ),
          const SizedBox(height: 70,)
        ],
      ),
    );
  }
}