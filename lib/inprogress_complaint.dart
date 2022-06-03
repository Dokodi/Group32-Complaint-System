import 'package:flutter/material.dart';

class inprogress_complaint extends StatelessWidget {
  const inprogress_complaint({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(


       
        body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 25, 30, 0),

          child: Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                child: const Text('No',
                    style: TextStyle(
                        fontSize: 80.0, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                child: const Text('records',
                    style: TextStyle(
                        fontSize: 80.0, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding:
                const EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                child: const Text('    .',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green)),
              )
            ],
          ),


    )
   );
  }
}