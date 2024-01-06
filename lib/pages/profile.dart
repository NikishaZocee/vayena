import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vayena/pages/setting.dart';

import 'about.dart';
import 'calender.dart';
import 'dashboard.dart';
import 'login.dart';
import 'notification.dart';
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(253, 213, 200, 1),
          child: Stack(
            children: [


              Positioned(
                top: 70,
                left: 160,
                child: CircleAvatar(
                  radius: 50.0,

                  backgroundImage: AssetImage('assets/images/img.png'),
                ),
              ),
              Positioned(
                  top: 180,
                  left: 145,
                  child: Text("Nikisha Joshi",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Color.fromRGBO(249, 71, 108, 1),

                        fontSize: 20),
                  )
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 220),
                    Card(
                      color: Color.fromRGBO(249, 71, 108, 1),
                      child: ListTile(
                        leading: Icon(Icons.person, color: Colors.white,),
                        title: Text('Username', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      color: Color.fromRGBO(249, 71, 108, 1),
                      child: ListTile(
                        leading: Icon(Icons.alternate_email, color: Colors.white,),
                        title: Text('Email', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      color: Color.fromRGBO(249, 71, 108, 1),
                      child: ListTile(
                        leading: Icon(Icons.calendar_month, color: Colors.white,),
                        title: Text('Date of Birth', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),

                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return settings();
                        }));
                      },
                      child: Card(
                        color: Color.fromRGBO(249, 71, 108, 1),
                        child: ListTile(
                          leading: Icon(Icons.settings, color: Colors.white,),
                          title: Text('Settings',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Card(
                      color: Color.fromRGBO(249, 71, 108, 1),
                      child: ListTile(
                        leading: Icon(Icons.info, color: Colors.white,),
                        title: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)
                              {
                                return about();
                              }
                              ));
                            },
                            child: Text('About FemmeFlow', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Card(
                      color: Color.fromRGBO(249, 71, 108, 1),
                      child: ListTile(
                        leading: Icon(Icons.logout, color: Colors.white,),
                        title: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)
                              {
                                return login();
                              }
                              ));
                            },
                            child: Text('Log out', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ],

                ),
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
          )



      ),
    );
  }
}


