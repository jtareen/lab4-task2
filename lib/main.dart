import 'package:flutter/material.dart';
import 'package:lab4_task2/widgets/gardient_button.dart';
import 'package:lab4_task2/widgets/primary_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Complex UI',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(14, 19, 23, 1.0),
        ),
        backgroundColor: const Color.fromRGBO(14, 19, 23, 1.0),
        body: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const Text(
                'Hello',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Sign in to your Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Email', border: UnderlineInputBorder()),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w100))),
              const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: UnderlineInputBorder(),
                    ),
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                width: double.infinity, // Makes the container full width
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Forgot your Password?',
                  textAlign: TextAlign.right, // Aligns text to the right
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white), // Optional: Customize text style
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              gradientButton('Sign In', [
                const Color.fromRGBO(34, 225, 160, 1.0),
                const Color.fromRGBO(40, 180, 248, 1.0)
              ]),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: primaryButton('Facebook')),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: primaryButton('Google'),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
