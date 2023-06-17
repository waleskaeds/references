import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: height / 3,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
            ),
            child: Center(
              child: Stack(
                children: [
                  Column(
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
                  )
                ] 
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail, color: Colors.white),
                    labelText: "E-mail",
                    hintText: "email@email.com",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Rubik',
                    ),
                    hintStyle: TextStyle(
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
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.key, color: Colors.white),
                    labelText: "Senha",
                    hintText: "Insira aqui sua senha",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Rubik',
                    ),
                    hintStyle: TextStyle(
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
                "Esqueceu sua senha? Clique aqui 1",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Rubik',
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