import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height:double.maxFinite,
        width:double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              top:40,
              left:20,
              child: Row(children: [
                IconButton(onPressed: (){},icon:Icon(Icons.menu))
              ],)
            ),
            
          ],
        ),
      )
    );
  }
}