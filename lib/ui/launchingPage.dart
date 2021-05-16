import 'package:flutter/material.dart';
import './login.dart';
import './signup.dart';

class LaunchingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Online',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                ),
              ),
              Text('Seat.lk',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Image.asset(
            'images/logo.png',
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            //make rounded button
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.0),
              topLeft: Radius.circular(25.0),
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            )),

            child: Text('login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
            color: Colors.red,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            //make rounded button
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.0),
              topLeft: Radius.circular(25.0),
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            )),

            child: Text('Sign up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
