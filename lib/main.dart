

import 'package:flutter/material.dart';
import 'package:kare/Screens/Login/LoginScreen.dart';
import 'package:kare/routes.dart';
import 'package:kare/theme.dart';

void main() async {
  runApp(
    MaterialApp(
      title: "KaRe",
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
  )
  );
}