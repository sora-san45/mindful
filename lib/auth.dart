import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mindful/homepage.dart';
import 'package:mindful/signup.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: 300),
          Text(
            "Welcome",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: "email address",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: "password",
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("LOG IN"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19)))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child:Text("Sign Up",
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal))
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
