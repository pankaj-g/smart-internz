import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Create your Account'),
        ),
        body: SingleChildScrollView(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/bus.jpg',
                      height: 150.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.supervisor_account, color: Colors.deepPurple,),
                          border: OutlineInputBorder(), labelText: "Name", ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: _addressController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_pin_circle, color: Colors.deepPurple,),
                          border: OutlineInputBorder(),
                          labelText: "Address",),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone, color: Colors.deepPurple,),
                        border: OutlineInputBorder(), labelText: "Mobile Number", ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.deepPurple,),
                        border: OutlineInputBorder(), labelText: "Email Address", ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.deepPurple,),
                        border: OutlineInputBorder(), labelText: "Username", ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Colors.deepPurple,),
                        border: OutlineInputBorder(), labelText: "Password", ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: _confirmpController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Colors.deepPurple,),
                        border: OutlineInputBorder(), labelText: "Confirm Password", ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      width: 250.0,
                      child: FlatButton(
                        textColor: Colors.white,
                        child: Text('Register'),
                        shape: RoundedRectangleBorder(side: BorderSide(
                            width: 1,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(50)),
                        padding: EdgeInsets.all(15.0),
                        onPressed: () {},
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
