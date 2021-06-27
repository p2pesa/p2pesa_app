import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 50.0,
                child: Image.asset(
                  "assets/icons/logo.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),
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
                    //  border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: Text('Forgot Password'),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.only(bottom: 5),
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    print(usernameController.text);
                    print(passwordController.text);
                  },
                ),
              ),
              Container(
                  child: Row(
                children: <Widget>[
                  Text("Don't have an a account?"),
                  FlatButton(
                    textColor: Colors.white,
                    child: Text(
                      'Sign in',
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
          ),
        ),
      ),
    );
  }
}
