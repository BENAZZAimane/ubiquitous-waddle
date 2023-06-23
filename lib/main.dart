import 'package:fire_project/services/authentification.dart';
import 'package:fire_project/views/login.dart';
import 'package:fire_project/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
        providers: [
      StreamProvider.value(
          initialData: null,
          value: AuthService().user, )
    ],
            child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fire Security',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        textTheme:GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme) ,
        useMaterial3: true,
      ),



      home:const Wrapper(),
    );
  }
}




