import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser;
  //sign out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
    
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.teal.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        actions: [IconButton(
          onPressed: signUserOut,
          icon: Icon(Icons.logout,
          color: Colors.white,),
          )
          ],
      ),
      body: SafeArea(
        child: Center(
          child: Text("LOGGED IN ASS: " + user!.email!,
          style: TextStyle(
            fontSize: 20
          ),),
        ),
        ),
    );
  }
}