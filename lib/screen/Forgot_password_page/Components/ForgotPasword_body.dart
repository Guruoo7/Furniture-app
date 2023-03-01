// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:furniture/components/continue_bar.dart';
import 'package:furniture/screen/sign_in/components/FormError.dart';
import 'package:furniture/screen/sign_in/components/NoAccount_page.dart';
import 'package:furniture/size_config.dart';

import '../../../constants.dart';
import '../../sign_in/components/customized_suffixIcons.dart';

class FP_Body extends StatelessWidget {
  const FP_Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getproportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getproportionateScreenWidth(28),
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please Enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String Email = "";
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => Email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (String? value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "Enter your Email",
              labelText: "Email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon:
                  customizeSuffixIcon(svgIcons: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getproportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          ContinueBar(
              text: "continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              }),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccount(),
        ],
      ),
    );
  }
}
