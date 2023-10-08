import "package:firebase_auth/firebase_auth.dart";

import "package:flutter/material.dart";
import "package:flutter_application_1/components/button.dart";
import "package:flutter_application_1/components/text_field.dart";

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  //sign in method
  void signin() async {
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailTextController.text.trim(),
          password: passwordTextController.text.trim());
      //pop loading circle
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      displayMessage(e.code);
    }
  }

  //display a error mesage
  void displayMessage(String message) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(message),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                //welcome back message
                const Text("Welcome back"),

                const SizedBox(
                  height: 25,
                ),

                MyTextField(
                    controller: emailTextController,
                    hintText: 'Email',
                    obscureText: false),
                //go to register page
                const SizedBox(
                  height: 25,
                ),
                MyTextField(
                    controller: passwordTextController,
                    hintText: 'Password',
                    obscureText: true),

                const SizedBox(
                  height: 10,
                ),

                MyButton(onTap: signin, text: "Sign in"),
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not a member?",
                      style:
                          TextStyle(color: Color.fromARGB(255, 123, 112, 112)),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        "Register Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
