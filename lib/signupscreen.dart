import 'package:flutter/material.dart';
import 'package:login/drawer.dart';
import 'package:login/main.dart';

import 'login.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ),


            Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: const Text('Sign',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                  child: const Text('     Up',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding:
                      const EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                  child: const Text('.',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green)),
                )
              ],
            ),
            const TextField(
              style: TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
              decoration: InputDecoration(
                labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: "First Name",
                hintText: "Enter Your First Name",
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ),
            const TextField(
              style: TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
              decoration: InputDecoration(
                labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: "Last Name",
                hintText: "Enter Your Last Name",
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ),
            const TextField(
              style: TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
              decoration: InputDecoration(
                labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: "User Name",
                hintText: "Enter Your User Name",
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ),
            const TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: "Email",
                hintText: "Enter Your Email",
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ),
            const TextField(
              style: TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
              decoration: InputDecoration(
                labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: "Phone Number",
                hintText: "Enter Your Phone Number",
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ),
            const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: "Password",
                hintText: "Enter Your Password",
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            GestureDetector(
              child: Container(
                height: 60,
                width: 260,

                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: RaisedButton(
                  child: const Text("Register"),
                  color: const Color.fromARGB(255, 49, 149, 3),
                  textColor:
                  const Color.fromARGB(255, 231, 231, 224),
                  splashColor:
                  const Color.fromARGB(255, 109, 149, 187),

                  onLongPress: () {},
                  onPressed: () {
                    var push = Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => drawer()),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                const Text('already have an account?'),
                TextButton(
                  child: FlatButton(
                    onPressed: () {
                      var push = Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const login()),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textColor: const Color.fromARGB(255, 88, 168, 112),
                  ),
                  onPressed: () {},
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
