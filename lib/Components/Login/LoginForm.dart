import 'package:flutter/material.dart';
import 'package:kare/Components/custom_surfix_icon.dart';
import 'package:kare/Components/default_button_custom_color.dart';
import 'package:kare/Utils/constants.dart';
import 'package:kare/size_config.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInform createState() => _SignInform();

}

class  _SignInform extends State<SignInform> {

  final _formKey = GlobalKey<FormState>(); 
  String? username;
  String? password;
  bool? remember = false;

  TextEditingController txtUserName = TextEditingController(),
  txtPassword =TextEditingController();
 


  FocusNode focusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)), 
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [ 
              Checkbox(
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember=value;
                  });
                }
              ),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () => {},
                child: Text("Lupa Kata Sandi",
                 style: TextStyle( decoration: TextDecoration.underline),
                 ),
              )

            ],
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "MASUK",
            press: () {

            }
          ), 
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Belum Punya Akun ? ",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],),
        );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.emailAddress,
      style: mTitle,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: 'Masukkan Alamat Email Anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor: kPrimaryColor),
          floatingLabelBehavior:  FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",)
 
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
     obscureText: true,
      style: mTitle,
      decoration: InputDecoration(
        labelText: "Kata Sandi",
        hintText: 'Masukkan Kata Sandi Anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor: kPrimaryColor),
          floatingLabelBehavior:  FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",)
 
      ),
    );
}
}