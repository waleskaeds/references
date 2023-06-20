import 'package:flutter/material.dart';

class LoginImage extends StatefulWidget {
  const LoginImage({super.key});

  @override
  State<LoginImage> createState() => _LoginImageState();
}

class _LoginImageState extends State<LoginImage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset('assets/images/img_malwee.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 60,),
                  Image.asset('assets/images/grupo_malwee_logo.png'),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                    child: Image.asset('assets/images/grupo_malwee_letra.png'),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: (height / 3) * 2 - 22,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50), 
                        topLeft: Radius.circular(50)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 20,),
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
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}