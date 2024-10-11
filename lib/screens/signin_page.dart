import 'package:flutter/material.dart';
import 'package:lab4_task2/widgets/gardient_button.dart';
import 'package:lab4_task2/widgets/primary_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign in to your Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            )),
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
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Forgot your Password?',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            gradientButton('Sign In', [
              const Color.fromRGBO(34, 225, 160, 1.0),
              const Color.fromRGBO(40, 180, 248, 1.0)
            ]),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      'Or Sign In with',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  )),
                ],
              ),
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
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style:
                            TextStyle(color: Colors.white), // Normal text style
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color:
                              Colors.cyanAccent, // Color for the "Sign Up" text
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration
                              .underline, // Underline to mimic a hyperlink
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
          ],
        ),
      )),
    );
  }
}
