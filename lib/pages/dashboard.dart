import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:toggle_switch/toggle_switch.dart';
import 'package:vayena/pages/profile.dart';

import '../data/Homepage.dart';
import 'calender.dart';
import 'info.dart';
import 'notification.dart';

class dash extends StatefulWidget {
  const dash({super.key});

  @override
  State<dash> createState() => _dashState();
}
class _dashState extends State<dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(253, 213, 200, 1),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 37, right: 10, left: 10),
              child: Container(
                  height: 240,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:Row(
                      children: [
                        Container(
                          height: 240,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),

                          child: Column(
                            children: [
                              Text("Today", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                              Container(
                                height: 25,
                                width: 60,
                                child: Center(child: Text("18 dec", style: TextStyle(color: Colors.white),)),

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20), color: Colors.pink
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text("Your period starts in 4 days.", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20
                                    ),
                                    ),
                                  ),
                                  Icon(CupertinoIcons.clock,
                                    color: Colors.white,
                                    size: 120,)
                                ],
                              ),

                            ],
                          ),

                        ),
                        Container(
                          height: 240,
                          width: 400,

                        ),

                      ],
                    ),
                  )
              ),
            ),
            Column(
              children: [
                SizedBox(height: 280),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 70,
                    width: 395,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(250, 242, 232, 1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "🩸  Start period", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                            fontSize: 18
                        ),
                        ),
                        ToggleSwitch(
                          activeBgColor: [Colors.pink],
                          initialLabelIndex: 0,
                          totalSwitches: 2,
                          labels: ["Yes", "No"],
                          onToggle: (index) {
                            print('switched to: $index');
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 260,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(250, 242, 232, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: home(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return info();
                      }
                      )
                      );
                    },
                    child: Container(
                      height: 70,
                      width: 400,
                      child:Padding(
                        padding: const EdgeInsets.all(9),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Image.asset("assets/images/img_5.png", ),
                            SizedBox(width: 20,),
                            Text("What is menstrual cycle?",
                              style: TextStyle(color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),

                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                )


              ],
            ),

            Positioned(
              bottom: 0,
              child: Container(
                height: 60 ,
                width: 420,
                color: Color.fromRGBO(253, 213, 200, 1),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell
                      (onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return dash();
                      }));
                    },

                        child: Icon(Icons.bar_chart, color: Colors.pink, size: 40,)),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return calender();
                          }));
                        },
                        child: Icon(Icons.calendar_month_sharp, color: Colors.pink, size: 40,)),

                    InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return notify();
                          }));
                        },
                        child: Icon(Icons.notifications_active, color: Colors.pink, size: 35,)),


                    InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return profile();
                          }));
                        },
                        child: Icon(CupertinoIcons.profile_circled, color: Colors.pink, size: 40,)),



                  ],



                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
