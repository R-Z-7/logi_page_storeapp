// ignore_for_file: prefer_const_constructors

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;

  // Toggles the pasZsword show status

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .4,
                child: Stack(
                  children: [
                    Positioned(
                      top: -35,
                      height: size.height * 0.4,
                      width: size.width,
                      child: DelayedDisplay(
                        delay: Duration(seconds: 1),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/background.png'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.4,
                      width: size.width + 20,
                      child: DelayedDisplay(
                        delay: Duration(seconds: 2),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/background-2.png'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DelayedDisplay(
                      delay: Duration(seconds: 1, milliseconds: 500),
                      child: Text(
                        "Login",
                        style: const TextStyle(
                            color: Color(0xff31274F),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: 1, milliseconds: 700),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(196, 135, 198, .4),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade300))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Username",
                                    hintStyle: TextStyle(color: Colors.grey)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                obscureText: !_passwordVisible,
                                enableSuggestions: false,
                                autocorrect: false,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    suffixIcon: IconButton(
                                      color: Colors.grey.shade400,
                                      icon: Icon(_passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          _passwordVisible = !_passwordVisible;
                                        });
                                      },
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: 1, milliseconds: 800),
                      child: Center(
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Color.fromRGBO(196, 135, 198, 1)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: 1, milliseconds: 900),
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(49, 39, 79, 1)),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: 1, milliseconds: 1000),
                      child: Center(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Color.fromRGBO(49, 39, 79, .6),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
