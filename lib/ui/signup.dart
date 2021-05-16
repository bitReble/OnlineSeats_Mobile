import 'package:flutter/material.dart';
import './findBuses.dart';
import './login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Sign Up';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(appTitle),
            backgroundColor: Colors.redAccent,
          ),
          body: Container(
            margin: const EdgeInsets.all(50.5),
            child: ListView(
              children: <Widget>[
                //add logo
                Image.asset(
                  'images/logo.png',
                  width: 200,
                  height: 200,
                ),
                SignUpForm(),
              ],
            ),
          )),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  createState() {
    return SignUpFormState();
  }
}

class SignUpFormState extends State<SignUpForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
            hintText: "username(email)",
            icon: Icon(Icons.email),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '*required';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "password",
            icon: Icon(Icons.lock),
          ),
          validator: (value) {
            if (value.isEmpty) {
              return "* Required";
            } else if (value.length < 6) {
              return "Password should be atleast 6 characters";
            } else if (value.length > 15) {
              return "Password should not be greater than 15 characters";
            } else
              return null;
          },
        ),
        //create a button
        Container(
          margin: EdgeInsets.all(10.5),
          child: RaisedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                print("Validated");
              } else {
                print("Not Validated");
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FindBuses()),
              );
            },
            child: Text("Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
            color: Colors.red,
          ),
        ),
        Padding(padding: EdgeInsets.all(14.0)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Already have an account?",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16.9,
                fontWeight: FontWeight.w400,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16.9,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
