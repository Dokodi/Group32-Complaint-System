// main.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Kindacode.com',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _viewFile() async {
    final _url =
        'https://www.kindacode.com/wp-content/uploads/2021/07/test.pdf';
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      print('Something went wrong');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
    title: Text("Completed_complaint"),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
            colors: <Color>[Color.fromARGB(226, 42, 189, 49), Colors.green])),
      ),
    ),
      
      body: Center(
        child: ElevatedButton(
          child: Text('View PDF'),
          onPressed: _viewFile,
        ),
      ),
    );
  }
}

