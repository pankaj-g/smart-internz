import 'package:flutter/material.dart';
import 'package:smartinternz/screens/navigation.dart';
import 'package:smartinternz/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          elevation: 0.0,
          title: Text(''),
        ),
        body: SingleChildScrollView(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: Form(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Sign-In to your account', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: "Pacifico"),),
                    ),
                    Image.asset(
                      'images/bus.jpg',
                      height: 150.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.deepPurple,),
                          border: OutlineInputBorder(), labelText: "Username"),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Colors.deepPurple,),
                          border: OutlineInputBorder(),
                          labelText: "Password",),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      width: 250.0,
                      child: FlatButton(
                        textColor: Colors.white,
                        child: Text('Login'),
                        shape: RoundedRectangleBorder(side: BorderSide(
                            width: 1,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(50)),
                        padding: EdgeInsets.all(15.0),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => BottomNavyBar()
                          ));
                        },
                        color: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('or', style: TextStyle(fontSize: 18.0),),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: 250.0,
                      child: FlatButton(
                        textColor: Colors.white,
                        child: Text('Register here!'),
                        shape: RoundedRectangleBorder(side: BorderSide(
                            width: 1,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(50)),
                        padding: EdgeInsets.all(15.0),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => RegisterScreen()
                          ));
                        },
                        color: Colors.deepPurple,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
