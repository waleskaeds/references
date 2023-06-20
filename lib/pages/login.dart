import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: (height / 5) * 2,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
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
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: TextButton(
              onPressed: (){}, 
              child: Text(
                "Entrar ", 
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, 
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
              color: Colors.white,
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