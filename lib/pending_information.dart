import 'package:flutter/material.dart';

class pending_information extends StatefulWidget {
  const pending_information({ Key? key }) : super(key: key);



  @override
  State<pending_information> createState() => _pending_informationState();
}

class _pending_informationState extends State<pending_information> {
  get iconSize => null;

 

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		centerTitle: true,
    title: Text("Pending_complaint"),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
            colors: <Color>[Color.fromARGB(226, 42, 189, 49), Colors.green])),
      ),
	),
body: Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(50),
              child: Table(
                border: TableBorder.all(
                color: Colors.black,  
                        style: BorderStyle.solid, 
                         
                        width: 2),
                children: [
                  TableRow( children: [
                    Column(children:[
                      
                      Text('Number'),
                    ]),
                    Column(children:[
                    
                      Text('Category'),
                    ]),
                    Column(children:[
                  Text('Sub-Category'),
                    ]),
                     Column(children:[
                  Text('Nature'),
                    ]),
                     Column(children:[
                  Text('Date & Time'),
                    ]),
                     Column(children:[
                  Text('File'),
                    ]),
                      Column(children:[
                  Text('Complaint'),
                    ]),
                  ]),
              TableRow( children: [
                
                  Text('1'),
                  Text('Faculty'),
                  Text('attendence'),
                  Text('sir xyz'),
                  Text('Apr 17,2022,8:26pm'),
                  Text('view file'),
                  Text('Sir too late/or write whatever'),
                  ]),
                   TableRow( children: [
                
                  Text('1'),
                  Text('Faculty'),
                  Text('attendence'),
                  Text('sir xyz'),
                  Text('Apr 17,2022,8:26pm'),
                  Text('view file'),
                  Text('Sir too late/or write whatever'),
                  ]),
                ],
              ),
            ),
          ]))

	);
            
}
}
