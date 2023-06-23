import 'package:fire_project/services/authentification.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool inLoginProcess = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage('assets/securite.png'),
                fit: BoxFit.cover,
                )),
            ),
            const Text(
                'Fire Security',
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF545454),
                  fontSize: 35,
              ),
            ),
             const Padding(
               padding: EdgeInsets.all(15.0),
             child: Text(
              'Découvrez et partagez les meilleures Caméras de surveillance  ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF545454),
                fontSize: 25,
              ),
              )
             ),
            inLoginProcess
                ? const Center(child: CircularProgressIndicator())
            :ElevatedButton(
                onPressed: ()=> signIn() ,
                child: const Text('Connectez-vous avec Google'))
                ],
        ),

      ),
    );
  }
  signIn(){
    setState(() {
      inLoginProcess = true;
      AuthService().signInWithGoogle();
    });
  }
}
