import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:login/file_list.dart';
import 'package:open_file/open_file.dart';

class makecomplaint extends StatefulWidget {
  const makecomplaint({ Key? key }) : super(key: key);

  @override
  State<makecomplaint> createState() => _makecomplaintState();
}

class _makecomplaintState extends State<makecomplaint> {
  FilePickerResult? result;
  PlatformFile? file;
  // var _currencies = [
  //   "Food",
  //   "Transport",
  //   "Personal",
  //   "Shopping",
  //   "Medical",
  //   "Rent",
  //   "Movie",
  //   "Salary"
  // ];
  // var _currentSelectedValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(



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
                  children: [],
                ),
              ),


              Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    child: const Text('Make',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                    child: const Text('complain',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding:
                    const EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                    child: const Text('       .',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:  TextField(
                        style:
                        TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Categories",
                          hintText: "Enter Your Categories",
                        ),
                      ),
                    ),
                  ),

                  new Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: new TextField(
                        style:
                        TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                        decoration: InputDecoration(

                          border: OutlineInputBorder(),
                          labelText: "Sub Categories",
                          hintText: "Plz Enter a Sub-Catergories",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [],
                ),
              ),



              TextField(
                style:
                TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  labelText: "Nature of Complaint",
                  hintText: "Regarding to...",
                ),
              ),


              Padding(

                padding: const EdgeInsets.fromLTRB(30, 30, 20, 0),
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
                  labelText: "    Description",
                  hintText: "    Feel free to write. Your complaint is secure.",
                  contentPadding: EdgeInsets.symmetric(vertical: 50),
                ),
              ),
              Padding(

                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
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
                  labelText: "Regarding File",
                  hintText: "Regarding to...",

                ),
              ),
              Padding(

                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 60,
                  width: 260,
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                  child: RaisedButton(
                    child: const Text("Pick File"),
                    color: const Color.fromARGB(255, 49, 149, 3),
                    textColor:
                    const Color.fromARGB(255, 231, 231, 224),
                    splashColor:
                    const Color.fromARGB(255, 109, 149, 187),
                    onLongPress: () {},
                      onPressed: ()
                      {
                        pickFiles();
                      }
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }

  void pickFiles() async {
    result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if(result == null) return;

    loadSelectedFile(result!.files);
  }
  void loadSelectedFile(List<PlatformFile> files) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
        FileList(files: files, onOpenedFile: viewFile)));
  }

  void viewFile(PlatformFile file){

    //OpenFile.open(file.path);
  }}
