import 'package:flutter/material.dart';
import 'package:login/drawer.dart';

class personalinfo extends StatefulWidget {
  const personalinfo({ Key? key }) : super(key: key);

  @override
  State<personalinfo> createState() => _personalinfoState();
}

class _personalinfoState extends State<personalinfo> {
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
                  child: const Text('Edit',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                  child: const Text('profile',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding:
                  const EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                  child: const Text(' .',
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
                labelText: "Gender",
                hintText: "Male or Female",
              ),
            ),

            const SizedBox(
              height: 10,
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
                  child: const Text("Save"),
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

          ],
        ),
      ),
    );
  }
}







   