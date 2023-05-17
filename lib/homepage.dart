import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mindful/auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> il = <String>['1', '2', '3', '4', '5'];
  bool moodTap=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              width: double.maxFinite,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/images/bg.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Positioned(
                child: Container(
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
              ],
            ))),
          ),
          Positioned(
              top: 140,
              child: Container(
                height: 800,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15)
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Your Mood Today",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w600),
                          )),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height:60,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: il.length,
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left:16),
                                child: InkWell(
                                  onTap: (){
                                    moodTap=true;
                                  },
                                  child:Container(
                                    height:60,
                                    width:60,
                                    child:Text('${il[index]}'),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                         BoxShadow(
                                           color: Color.fromARGB(255, 164, 159, 159),
                                            spreadRadius: 1,
                                           blurRadius: 15)
                                      ],
                                      border: moodTap?Border.all(color:Colors.black87):Border.all(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ),
                              );
                            })),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
