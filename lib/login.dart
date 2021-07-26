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
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 80.0,
                  width: 230,
                  child: Image.asset(
                    "assets/icons/logo.jpg",
                    fit: BoxFit.contain,
                  ),
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
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xFF8591A1),
                  ),
                ),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.only(bottom: 5),
                child: ElevatedButton(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFF1E3352),
                      ),
                    ),
                  ),
                  onPressed: () {
                    print(usernameController.text);
                    print(passwordController.text);
                  },
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Color(0xFF8591A1),
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Create an account',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ))),
            ],
          ),
        ),
      ),
    );
  }
}
