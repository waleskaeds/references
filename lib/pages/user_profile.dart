import 'package:flutter/material.dart';
import 'package:references/components/button.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: heightSize * 0.45,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(75), bottomLeft: Radius.circular(75)),
                color: Theme.of(context).colorScheme.primary
              ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon : const Icon(Icons.arrow_back, color: Colors.white, size: 35,),
                  ),
                ),
                const Center(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            ),
            SizedBox(height: heightSize * 0.05,),
            const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Row(
              children: [
            Icon(
              Icons.person,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Eduardo Machado',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            ),
              ],
            ),
            ),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 1,
            ),
            const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Row(
              children: [
            Icon(
              Icons.attach_file,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'ja35009',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            ),
              ],
            ),
            ),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 1,
            ),
            const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Row(
              children: [
            Icon(
              Icons.alternate_email,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'eduardo.m@malwee.com',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            ),
              ],
            ),
            ),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 1,
            ),
            const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Row(
              children: [
            Icon(
              Icons.lock_outline,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Administrador',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            ),
              ],
            ),
            ),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 1,
            ),
            SizedBox(height: heightSize > 750
            ? 50
            : 30
            ),
            ButtonComponent(route: () {}, title: "Editar Usuários")
          ],
        ),
      ),
    );
  }
}