import 'package:flutter/material.dart';
import 'package:login/main.dart';

import 'login.dart';

class change_Passward extends StatefulWidget {
  const change_Passward({ Key? key }) : super(key: key);

  @override
  State<change_Passward> createState() => _change_PasswardState();
}

class _change_PasswardState extends State<change_Passward> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
         appBar: AppBar(
             leading: IconButton(
             icon: Icon(Icons.arrow_back, color: Color.fromARGB(209, 255, 247, 247)),
               onPressed: () => Navigator.of(context).pop(),
               
              ),
        centerTitle: true,
    title: Text("Change passward"),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Row(    
                mainAxisAlignment: MainAxisAlignment.start,
           children: [
                 
                
               ],
              ),
            ),  
            TextField(
                style: 
                 TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                 decoration: InputDecoration(
                   
                      border: OutlineInputBorder(),
                      labelText: "Change Passward",
                 hintText: "Enter Your Change Passward ",
                      ),
                ),
                 Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ),  
                TextField(obscureText: true,
                style:
                TextStyle(color: Colors.black),
                decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: "New Password",
                 hintText: "Enter Your New Password",
                 ),
               ),
                Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ),  
                TextField(obscureText: true,
                style:
                TextStyle(color: Colors.black),
                decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: "Re-enter Password",
                 hintText: "Enter Your Re-enter Password",
                 ),
               ),
                Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ),  
                GestureDetector(
                   child: Container(
                     height: 60,
                     width: 300,
                       padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                     
                        child:
                        
                         RaisedButton(child: Text("Save"),
                         
                         
                         
                        
                        color: Color.fromARGB(255, 49, 149, 216),
                       textColor: Color.fromARGB(255, 231, 231, 224),
                       splashColor: Color.fromARGB(255, 109, 149, 187),
                       onLongPress: (){},
                        onPressed: (
                  ){
                          var push = Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const login()),
                   );
                 
                   
                        },                    ),
                     ),
                 ),
          ]
        ),
        ), 
    );
        
  }
}