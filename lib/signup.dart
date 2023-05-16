import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mindful/homepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final p1 = TextEditingController();
  final p2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: 250),
          Text(
            "Sign Up",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "email addres",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
            child: TextField(
              controller: p1,
              decoration: InputDecoration(
                  labelText: "password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
            child: TextField(
              controller: p2,
              decoration: InputDecoration(
                  labelText: "confirm password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (p1.text == p2.text) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              } else {
                showDialog(context: context, builder: (context) => Alert());
              }
            },
            child: Text("SIGN IN"),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ],
      ),
    ));
  }
}

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(title: Text("Passwords don't match"));
  }
}
