import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/signupscreen.dart';

import 'login.dart';

class resetpassward extends StatefulWidget {
  const resetpassward({ Key? key }) : super(key: key);

  @override
  State<resetpassward> createState() => _resetpasswardState();
}

class _resetpasswardState extends State<resetpassward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
    title: Text("Complaint Management System"),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
            colors: <Color>[Color.fromARGB(226, 42, 189, 49), Colors.green])),
    ),
      ),

     body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text(
                  'Create a Password',
                  style: TextStyle(fontSize: 26, color: Color.fromARGB(255, 43, 75, 129),
                  fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text
                    ('For security, your password must be six \n                 character or more.',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 14, color: Colors.black,
                  ),
                ),
                  ],                 
                ),
  

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              ],        ),
          ),
              TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter Your Password",
                ),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [],
                ),
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirm PAssword",
                  hintText: "Enter Your Confirm Password",
                ),
              ),

              SizedBox(height: 40,),
        
         GestureDetector(
            child: Container(
              height: 40,
              width: 250,
              child: RaisedButton(onPressed: (){
                 var push = Navigator.push(
               context, 
               MaterialPageRoute(builder: (context) => const login()),
              );   
              },
              child: Text('Reset Password ',
              style: TextStyle(fontWeight: FontWeight.bold), 

               ),
              color: Color.fromARGB(255, 76, 156, 209),
              textColor: Colors.white,
              onLongPress: (){
             
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