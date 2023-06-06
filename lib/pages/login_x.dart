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
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue[900]!,
              // Colors.blue[800]!,
              Colors.blue[600]!,
            ])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80,),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Rubik'
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Rubik'
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(height: 80,),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 20,
                            offset: const Offset(0, 10)
                          )]
                        ),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.account_circle),
                                labelText: 'Matrícula',
                                hintText: "Ex: ja35009"
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 20,
                            offset: const Offset(0, 10)
                          )]
                        ),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.key),
                                labelText: 'Senha',
                                hintText: "Insira aqui sua senha"
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 5),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: TextButton(
                          onPressed: (){}, 
                          child: const Text(
                            "Entrar ", 
                            style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Rubik',),)),
                      ),
                      TextButton(onPressed: (){}, child: Text(
                        "Esqueceu sua senha? Clique aqui",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontFamily: 'Rubik',
                          fontSize: 13
                        ),
                      ))
                    ]),
                ),
              )
            )
          ],
        ),
      ),
    );
    
  }
}