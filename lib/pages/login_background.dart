import 'package:flutter/material.dart';
import 'package:references/pages/list.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,//Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: height / 10),
                width: double.infinity,
                height: (height / 10) * 9,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    // topRight: Radius.circular(50),
                    topLeft: Radius.circular(85)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100,),
                    const SizedBox(
                      height: 110,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 60
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.mail, color: Colors.black,),
                          labelText: "E-mail",
                          hintText: "email@email.com",
                          labelStyle: TextStyle(
                            color: Colors.black
                          ),
                          hintStyle: TextStyle(
                            color: Colors.black
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                            width: 2,
                            color: Colors.black
                          )),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                            width: 2,
                            color: Colors.black
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
                            color: Colors.black
                          ),
                          hintStyle: TextStyle(
                            color: Colors.black
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                            width: 2,
                            color: Colors.black
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            width: 2,
                            color: Colors.black
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
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ListPage(),));
                        }, 
                        child: const Text(
                          "Entrar ", 
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 15, 
                          ),
                        )
                      ),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: (){}, 
                        child: const Text(
                        "Esqueceu sua senha? Clique aqui",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13
                        ),)
                      ),
                    ),
                    const SizedBox(height: 70,)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}