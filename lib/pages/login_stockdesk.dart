import 'package:flutter/material.dart';

class LoginStockDesk extends StatelessWidget {
  const LoginStockDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/element_abstract.png',
                  fit: BoxFit.fitHeight,
                )
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
                    child: Image.asset('assets/images/grupo_malwee_letra.png'),
                  ),
                  const Text(
                    "Stock Desk",
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 25
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail, color: Colors.black,),
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
                suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black),
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
              color: Colors.black//Theme.of(context).colorScheme.primary,
            ),
            child: TextButton(
              onPressed: (){}, 
              child: const Text(
                "Entrar ", 
                style: TextStyle(
                  color: Colors.white, 
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