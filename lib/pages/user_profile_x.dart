import 'package:flutter/material.dart';

class UserProfileX extends StatelessWidget {
  const UserProfileX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.blue
              ),
            child: Stack(
              children: [
                Container(color: Colors.blue, height: 50, width: double.infinity,),
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
            const SizedBox(height: 30,),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: const [
            Icon(
              Icons.person,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Eduardo Machado',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
              ],
            ),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: const [
            Icon(
              Icons.attach_file,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'ja35009',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
              ],
            ),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: const [
            Icon(
              Icons.alternate_email,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'eduardo.m@malwee.com',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
              ],
            ),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: const [
            Icon(
              Icons.lock_outline,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Administrador',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}