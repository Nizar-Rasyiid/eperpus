import 'package:eperpus/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:eperpus/services/services.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Wrapper()),
    );
  }
}








