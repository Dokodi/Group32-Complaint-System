import 'package:flutter/material.dart';
import 'package:login/signupscreen.dart';

import 'drawer.dart';
import 'forgotpassward.dart';
import 'main.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isHiddenPassword = true;

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  @override
  void initState() {
    username.text = ""; //innitail value of text field
    password.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 55, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/rbg.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),


                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                          child: const Text('Hello',
                              style: TextStyle(
                                  fontSize: 80.0, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                          child: const Text('There',
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [],
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: username,
                          autofocus: false,
                          decoration: const InputDecoration(
                              labelText: 'Username/Email',
                              prefixIcon: Icon(Icons.people),
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                        ),
                        TextField(
                          controller: password,
                          autofocus: false,
                          obscureText: isHiddenPassword,
                          onTap: _togglePasswordView,
                          decoration: const InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock),
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                          // obscureText: true,
                        ),
                        Container(height: 20),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            TextButton(
                              child: FlatButton(
                                onPressed: () {
                                  var push = Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const forgotpassward()),
                                  );
                                },
                                child: const Text(
                                  " Forgot Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                textColor:
                                    const Color.fromARGB(255, 241, 18, 18),
                              ),
                              onPressed: () {
                                var push = Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const login()),
                                );
                                //signup screen
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.end,
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
                              child: const Text("Login"),
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
                            const Text('Dont`t have an account?'),
                            TextButton(
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const signup()),
                                  );
                                },
                                child: const Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                textColor:
                                    const Color.fromARGB(255, 88, 168, 112),
                              ),
                              onPressed: () {
                                var push = Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const login()),
                                );

                                //signup screen
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 66, 160, 189),
          width: 3,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 64, 166, 184),
          width: 3,
        ));
  }

  //create a function like this so that you can use it wherever you want
}
