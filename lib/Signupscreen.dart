import 'package:flutter/material.dart';


class SignupPage extends StatefulWidget{
  @override
  _SignupPageState createState() => _SignupPageState(
    //TextEditingController nameController = TextEditingController(),
    //TextEditingController passwordController = TextEditingController(),

  );
}

class _SignupPageState extends State<SignupPage> {
Widget build(BuildContext context){
return Padding(
    padding: EdgeInsets.all(10),
    child: Center(
       child: Container(
       height: 500,
       child: ListView(
         children: <Widget>[
           Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        //controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'User Name',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        //controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                     Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        //controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          labelText: 'User Name',
                        ),
                      ),
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
                            //print(nameController.text);
                            //print(passwordController.text);
                          },
                        )),
                    Container(
                        child: Row(
                          children: <Widget>[
                            Text('Already in the Community'),
                            FlatButton(
                              textColor: Colors.green,
                              child: Text(
                                'LOGIN',
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                //signup screen
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ))
         ],
       )
  
    
  
                
  
    
  
    ),
  
  ),
);
}
}