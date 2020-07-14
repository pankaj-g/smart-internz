import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _sourceController = TextEditingController();
  final _destinationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0.0,
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: _sourceController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.gps_fixed, color: Colors.deepPurple,),
                        border: OutlineInputBorder(), labelText: "Source"),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: _destinationController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.gps_fixed, color: Colors.deepPurple,),
                        border: OutlineInputBorder(), labelText: "Destination"),
                  ),
                  RaisedButton(
                    child: Text('Search'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
