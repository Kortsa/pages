// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Sign_up.dart';
import './home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_android,
                  size: 150,
                  color: Colors.cyan,
                ),
                SizedBox(
                  height: 20,
                ),
                //hello again

                Text(
                  'Hello Again!!!!',
                  style: GoogleFonts.bebasNeue(fontSize: 50),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome Back you have been missed',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                //email textfield

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    //margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.person,
                          ),
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //password textfied

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    //margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.lock,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                            //fontSize: 12
                            ),
                      ),
                      onPressed: () {},
                      child: Text('forget password?'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                //sign in button

                //Padding(
                //padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //child: Container(
                //padding: EdgeInsets.all(20),
                //decoration: BoxDecoration(
                //color: Colors.black,
                //border: Border.all(color: Colors.blue),
                //borderRadius: BorderRadius.circular(30),
                //),
                //child: Center(
                //child: Text('Sign In',
                //style: GoogleFonts.quicksand(
                //color: Colors.white,
                // fontSize: 20,
                //)
                //),
                //),
                //),
                //),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                //not a member? registernow
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        //fontSize: 10,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                            //fontSize: 12
                            ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text('Register now'),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
