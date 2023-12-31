import 'package:fire_project/views/home.dart';
import 'package:fire_project/views/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final _user =Provider.of<User?>(context);
    return _user == null ? const Login() : const Home();

  }
}
