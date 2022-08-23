import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Function(User) onSignOut;
  HomePage({required this.onSignOut});

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    onSignOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          child: Text("Logout"),
          onPressed: () {
            logout();
          },
        ),
      ),
    );
  }
}
