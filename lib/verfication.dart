import 'package:flutter/material.dart';
import 'package:login/resetpassward.dart';
import 'package:otp_text_field/otp_field.dart';

class verification extends StatefulWidget {
  const verification({ Key? key }) : super(key: key);

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
    title: Text("Verification"),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
            colors: <Color>[Color.fromARGB(226, 42, 189, 49), Colors.green])),
    ),
         
      ),
      body: Form(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your verification code',
                style: TextStyle(fontSize: 24, color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text
                  ('Enter 4 digit code',
                 style: TextStyle(fontSize: 14, color: Colors.black,
                ),
              ),
                ],
                
              ),

              SizedBox(height: 20),
              OTPTextField(
  length: 4,
  width: MediaQuery.of(context).size.width,
  fieldWidth: 80,
  style: TextStyle(
    fontSize: 17
  ),
  textFieldAlignment: MainAxisAlignment.spaceAround,
  onCompleted: (pin)
 {
    print("Completed: " + pin);
  },
),
SizedBox(height:40,),
 GestureDetector(
          child: Container(
            height: 40,
            width: 150,
            child: RaisedButton(onPressed: (){
               var push = Navigator.push(
             context, 
             MaterialPageRoute(builder: (context) => const resetpassward()),
            );   
            },
            child: Text('Next',
            style: TextStyle(fontWeight: FontWeight.bold), 

             ),
            color: Colors.blueAccent,
            textColor: Colors.white,
            onLongPress: (){
           
            },
            ),
          ),
        ),
            
                      
            ],
          ),
        ),
      ),
    );
  }
}