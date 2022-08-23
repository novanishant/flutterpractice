import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  final Function(User) onSignInAno;

  const LoginPage({super.key, required this.onSignInAno});

  Future<void>loginAno() async {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInAnonymously();
    onSignInAno(userCredential.user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
            onPressed: () {
              loginAno();
            },
            child: Text("Sign In Ano")),
      ),
    );
  }
}
