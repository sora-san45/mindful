import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: [
            SizedBox(height: 250),
            Text("Sign Up",style: TextStyle(fontSize: 25),),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right:16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "email addres",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right:16.0,top:10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
            ),
            
          ],
        ),
      )
    );
  }
}