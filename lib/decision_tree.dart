import 'package:flutter/material.dart';
import 'package:flutter_application/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_page.dart';
import 'home_page.dart';

class DecisionTree extends StatefulWidget {
  @override
  State<DecisionTree> createState() => _DecisionTreeState();
}

class _DecisionTreeState extends State<DecisionTree> {
  User? user;
  @override
  void initState() {
    super.initState();
    onRefresh(FirebaseAuth.instance.currentUser);
  }

  onRefresh(userCred) {
    setState(() {
      user = userCred;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return LoginPage(
        onSignInAno: (userCred) => onRefresh(userCred),
      ); 
    }
    return HomePage(
      onSignOut: (userCred) => onRefresh(userCred),
    );
  }
}
