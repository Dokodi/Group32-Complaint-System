
import 'package:flutter/material.dart';
import 'package:login/change_passward.dart';
import 'package:login/complaint_history.dart';
import 'package:login/completed_complaint.dart';
import 'package:login/dashboard.dart';
import 'package:login/inprogress_complaint.dart';
import 'package:login/makecomplaint.dart';
import 'package:login/pending_information.dart';
import 'package:login/personalinfo.dart';



class TransactionDetails {
  final String item;
  final String companyName;
  final String amount;
  final bool income;
  final IconData icon;

  TransactionDetails({
    required this.item,
    required this.amount,
    required this.income,
    required this.companyName,
    required this.icon,
  });
}

class drawer extends StatefulWidget {

  List<TransactionDetails> todayTransactionsList = [
    TransactionDetails(
      item: 'Electrical Complaint',
      companyName: 'Socket Damage',
      amount: "Pending",
      income: false,
      icon: Icons.computer,
    ),
    TransactionDetails(
      item: 'Plumbing Complaint',
      companyName: 'Tap not flowing',
      amount: "Pending",
      icon: Icons.transit_enterexit,
      income: false,
    ),
  ];

  List<TransactionDetails> yesterdayTransactionsList = [
    TransactionDetails(
      item: 'Furniture Complaint',
      companyName: 'Broken Chair',
      amount: "Pending",
      income: false,
      icon: Icons.headset,
    ),
    TransactionDetails(
      item: 'Electrical Problem',
      companyName: 'Fan not working',
      amount: "Complete",
      income: true,
      icon: Icons.cake,
    ),
    TransactionDetails(
      item: 'Human Complaint',
      companyName: 'Noise Making Neighbours',
      amount: "Complete",
      income: true,
      icon: Icons.transit_enterexit,
    ),
  ];

   drawer({Key? key}) : super(key: key);


  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Complaint Management System"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Color.fromARGB(226, 42, 189, 49),
                Colors.green
              ])),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
              child: const Text('Home',
                  style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
              child: const Text(' page',
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
      ),



      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Kelvin Dokodi"),
              accountEmail: Text("dokesEF123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/photos/hot-air-balloons-flying-over-the-botan-canyon-in-turkey-picture-id1297349747?s=612x612'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text("Dashboard"),
              onTap: () {
                var push = Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dashBoard()),
                );
              },
            ),
            Divider(
              height: 30,
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(255, 194, 185, 185),
            ),
            ListTile(
              leading: Icon(Icons.file_copy_outlined),
              title: Text("Make Complaint"),
              onTap: () {
                var push = Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const makecomplaint()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text("Completed"),
              onTap: () {
                var push = Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble),
              title: Text("Inprogress"),
              onTap: () {
                var push = Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const inprogress_complaint()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.pending_actions),
              title: Text("pending"),
              onTap: () {
                var push = Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const pending_information()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("Complaint History"),
              onTap: () {
                var push = Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const complaint_history()),
                );
              },
            ),
            Divider(
              height: 30,
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(255, 194, 185, 185),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Edit info"),
              onTap: () {
                var push = Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const personalinfo()),
                );
              },
            ),
            Divider(
              height: 30,
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(255, 194, 185, 185),
            ),
            ListTile(
              leading: Icon(Icons.password_sharp),
              title: Text("Change Passward"),
              onTap: () {
                var push = Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const change_Passward()),
                );
              },
            ),
          ],
        ),
      ),

    );
  }
}
