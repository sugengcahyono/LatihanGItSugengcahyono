

import 'package:flutter/material.dart';
import 'package:kare/Components/Login/LoginForm.dart';
import 'package:kare/Utils/constants.dart';
import 'package:kare/size_config.dart';

class LoginComponent extends StatefulWidget {
  @override
_LoginComponen createState() => _LoginComponen();

}

class _LoginComponen extends State<LoginComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight *0.04,
                    ),
                     SizedBox(
                    height: SizeConfig.screenHeight *0.04,
                    ),
              
                   Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image.asset(
                          "assets/images/Planting_trees.png",
                          height: 150,
                          width: 202,
                        ),
                      ),
                    Padding(padding: EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login !",
                          style: mTitle,
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SignInform()
                ],
                ),
            ),
        ),
      ),
    );

}
}