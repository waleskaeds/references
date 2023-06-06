// import 'package:flutter/material.dart';

// class LoginY extends StatelessWidget {
//   const LoginY({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             color: Colors.amber,
//             child: Image.asset(
//               'assets/images/element_abstract.png',
//               fit: BoxFit.fitHeight,
//             )
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               prefixIcon: Icon(Icons.mail, color: Colors.white),
//               labelText: "E-mail",
//               labelStyle: TextStyle(
//                 // color: Colors.white,
//                 fontFamily: 'Rubik',
//               ),
//               focusedBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(
//                 // color: Colors.white,
//                 width: 2,
//               )),
//               enabledBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(
//                 // color: Colors.white,
//                 width: 2,
//               )),
//             ),
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               prefixIcon: Icon(Icons.key, color: Colors.white),
//               labelText: "Senha",
//               labelStyle: TextStyle(
//                 // color: Colors.white,
//                 fontFamily: 'Rubik',
//               ),
//               focusedBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(
//                 color: Colors.white,
//                 width: 2,
//               )),
//               enabledBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(
//                 color: Colors.white,
//                 width: 2,
//               )),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 5),
//             width: double.infinity,
//             height: 50,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(45),
//               color: Colors.white,
//             ),
//             child: TextButton(
//               onPressed: (){}, 
//               child: Text(
//                 "Entrar ", 
//                 style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 15, fontFamily: 'Rubik',),)),
//           ),
//           TextButton(onPressed: (){}, child: const Text(
//             "Esqueceu sua senha? Clique aqui",
//             style: TextStyle(
//               color: Colors.white,
//               fontFamily: 'Rubik',
//               fontSize: 13
//             ),
//           ))
//         ],
//       ),
//     );
//   }
// }