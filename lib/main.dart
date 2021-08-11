import 'package:flutter/material.dart';
import 'package:frontend_flutter/widgets/rounded_button_with_icon.dart';
import 'models/appdata.dart';
import 'package:provider/provider.dart';
import '/screens/opening_screen.dart';
import '/screens/signup_screen.dart';
import 'screens/signin_screen.dart';
import 'package:frontend_flutter/screens/user_preference_screen.dart';
import 'screens/get_started_screen.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Roboto'),
        home: Home(),
      ),
    );
  }
}
