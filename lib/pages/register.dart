import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
import 'login.dart';

class register extends StatefulWidget {
  register({super.key,});


  @override
  State<register> createState() => _loginState();
}
class _loginState extends State<register> {
//text controllers
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller = TextEditingController();

  //register method
  void main(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/logo.png',
                  color: Color.fromRGBO(255, 129, 149, 1)),
              SizedBox(height: 25,),

              SizedBox(height: 25,),
              //textfield for email
              MyTextField(
                  hintText: "Username",
                  obscuretext: false,
                  controller: emailcontroller
              ),
              SizedBox(height: 10),

              MyTextField(
                  hintText: "Email",
                  obscuretext: false,
                  controller: emailcontroller
              ),
              SizedBox(height: 10),

              //textfield for password
              MyTextField(
                  hintText: "Password",
                  obscuretext: true,
                  controller: passwordcontroller
              ),
              SizedBox(height: 10,),
              MyTextField(
                  hintText: "Confirm Passoword",
                  obscuretext: true,
                  controller: passwordcontroller
              ),

              SizedBox(height: 25,),
              MyButton(
                text: "Register",
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return login();
                  }));

                },
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return login();
                      }));
                    },
                    child: Text(" Login Here",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 129, 149, 1)),
                    ),
                  )
                ],
              ),


            ],

          ),
        ),
      ),
    );
  }
}

