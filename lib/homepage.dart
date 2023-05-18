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
  final List<String> mood = <String>["lib/icons/crying.png","lib/icons/sad.png","lib/icons/neutral.png","lib/icons/smile.png","lib/icons/happy.png"];
  
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
                    color: Color.fromARGB(255, 252, 205, 162),
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
                      padding: const EdgeInsets.only(left: 23, top: 30),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Your Mood",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w600),
                          )),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height:60,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mood.length,
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left:15),
                                child: InkWell(                                 
                                  onTap: (){
                                  },
                                  child:Stack(children:[
                                     Container(
                                      height:60,
                                      width:60,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 255, 230, 193),
                                        boxShadow: [
                                           BoxShadow(
                                             color: Color.fromARGB(255, 252, 192, 153),
                                              spreadRadius: 1,
                                             blurRadius: 15)
                                        ],
                                        borderRadius: BorderRadius.circular(25)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:14),
                                      child: Center(
                                        child: Container(
                                          height:30,
                                          width:30,
                                          decoration: BoxDecoration(
                                            image:DecorationImage(
                                              image:AssetImage(mood[index]),
                                              fit:BoxFit.fill
                                            ),
                                            shape:BoxShape.circle
                                          ),
                                        ),
                                      ),
                                    )
                                    ]
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
