import 'package:auth/components/my_button.dart';
import 'package:auth/components/my_textfield.dart';
import 'package:auth/components/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in user method
  void signUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal.shade100,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
           SizedBox(height: 50,),
          //logo
          Icon(Icons.lock,
          size: 100,
          color: Colors.blueGrey.shade900,
          ),
          SizedBox(height: 50,),
          //welcomeback, you've been missed!
          Text(
            'Welcome back!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            ),
             SizedBox(height: 25,),
          //username textfield
          MyTextField(
          controller: usernameController,
          hintText:'Username',
          obsecureText: false,
          ),
          SizedBox(height: 10,),
          //password textfield
          MyTextField(
          controller: passwordController,
          hintText:'Password',
          obsecureText: true,
          ),
          //forgot password?
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blueAccent.shade700, fontWeight: FontWeight.bold)
                ,
                ),
              ],
            ),
          ),
          //SizedBox(height: 1,),
          //sign in button
          MyButton(
            onTap: signUser,
          ),
          SizedBox(height: 50,),
          //or continue with
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Colors.blueGrey.shade400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(
                      color: Colors.black
                    ),
                    ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Colors.blueGrey.shade400,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 30,),
          //google + apple sign in button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //google button
              SquareTile(imagePath: 'assets/google_logo12.png',
              ),
              SizedBox(width: 25,),
              //apple button
              SquareTile(imagePath: 'assets/appleLogo.png',
              ),
            ],
          ),
          SizedBox(height: 35,),
          //not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a member?',
              style: TextStyle(
                color: Colors.black
              ),
              ),
              SizedBox(width: 5,),
              Text('Register now',
              style: TextStyle(
                color: Colors.blueAccent.shade700,
                fontWeight: FontWeight.bold
              ),)
            ],
          )
           ]
          ),
        ),
      )
    );
  }
}