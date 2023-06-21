// import 'package:flutter/material.dart';

// class LoginStockDesk extends StatelessWidget {
//   const LoginStockDesk({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       body: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 50,),
//                     Padding(
//                   padding: const EdgeInsets.only(top: 35, left: 30),
//                   child: Image.asset('assets/images/grupo_malwee_logo.png'),
//                 ),
//                     const SizedBox(
//                       height: 110,
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 30),
//                         child: Text(
//                           'Login',
//                           style: TextStyle(
//                             fontFamily: 'Rubik',
//                             color: Colors.white,
//                             fontSize: 30
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//                       child: TextFormField(
//                         decoration: const InputDecoration(
//                           prefixIcon: Icon(Icons.mail, color: Colors.white,),
//                           labelText: "E-mail",
//                           hintText: "email@email.com",
//                           labelStyle: TextStyle(
//                             fontFamily: 'Rubik',
//                             color: Colors.white
//                           ),
//                           hintStyle: TextStyle(
//                             fontFamily: 'Rubik',
//                             color: Colors.white
//                           ),
//                           focusedBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(
//                             width: 2,
//                             color: Colors.white
//                           )),
//                           enabledBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(
//                             width: 2,
//                             color: Colors.white
//                           )),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//                       child: TextFormField(
//                         decoration: const InputDecoration(
//                           prefixIcon: Icon(Icons.key, color: Colors.white),
//                           suffixIcon: Icon(Icons.remove_red_eye, color: Colors.white),
//                           labelText: "Senha",
//                           hintText: "Insira aqui sua senha",
//                           labelStyle: TextStyle(
//                             fontFamily: 'Rubik',
//                             color: Colors.white
//                           ),
//                           hintStyle: TextStyle(
//                             fontFamily: 'Rubik',
//                             color: Colors.white
//                           ),
//                           focusedBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(
//                             width: 2,
//                             color: Colors.white
//                           )),
//                           enabledBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(
//                             width: 2,
//                             color: Colors.white
//                           )),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: Colors.white//Theme.of(context).colorScheme.primary,
//                       ),
//                       child: TextButton(
//                         onPressed: (){}, 
//                         child: Text(
//                           "Entrar ", 
//                           style: TextStyle(
//                             color: Theme.of(context).colorScheme.primary,
//                             fontSize: 15, 
//                             fontFamily: 'Rubik',
//                           ),
//                         )
//                       ),
//                     ),
//                     Center(
//                       child: TextButton(
//                         onPressed: (){}, 
//                         child: const Text(
//                         "Esqueceu sua senha? Clique aqui",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'Rubik',
//                           fontSize: 13
//                         ),)
//                       ),
//                     ),
//                     const SizedBox(height: 70,)
//                   ],
//                 ),
//     );
//   }
// }