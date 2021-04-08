import 'package:flutter/material.dart';
import 'package:eperpus/services/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
              child: Text("Sign Up"),
                onPressed: () async{
                SignInSignUpResult result = await AuthServices.signUp("nizarrasyiid1221@gmail.com", "SmkBisa123", "Nizar", "081291290606");
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}








