//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:logapp/Signupscreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoginPage(), 
      routes: {
        "/":             (context)=>  LoginPage(),
        "/Signupscreen": (context)=>  SignupPage(),
      },
      ),
      );
}

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        /*appBar: AppBar(
          title: Text('Login Screen App'),
        ),*/
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Container(
                height: 500,
                child: ListView(
                  children: <Widget>[
                    /*Row(
                      children: <Widget>[
                             
                      ]
                    ),*/
                    /*Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Codeplayon',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),*/
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.green, width: 0.0),
                          ),
                          labelStyle: TextStyle(color: Colors.grey),
                          labelText: 'User Name',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: (){
                        //forgot password screen
                      },
                      textColor: Colors.black,
                      child: Text('Forgot Password'),
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          //color: Colors.blue,
                          child: Text('Login'),
                          color: Colors.green,
                      
                          onPressed: () {
                            print(nameController.text);
                            print(passwordController.text);
                          },
                        )),
                    Container(
                        child: Row(
                          children: <Widget>[
                            Text('New to the community?'),
                            FlatButton(
                              textColor: Colors.blue,
                              child: Text(
                                'Sign in',
                                style: TextStyle(fontSize: 20, color: Colors.green),
                                ),
                              onPressed: () {
                                //signup screen
                                SignupPage();
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ))
                  ],
                ),
              ),
            )));
  }
}
