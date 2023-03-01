// ignore_for_file: prefer_const_constructors, missing_return, non_constant_identifier_names, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:furniture/screen/login_success/login_success_screen.dart';

import '../../../components/continue_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../Forgot_password_page/Forgot_password.dart';
import 'FormError.dart';
import 'customized_suffixIcons.dart';

class SignForm extends StatefulWidget {
  SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String Email;
  late String Password;
  bool remember = false;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getproportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getproportionateScreenHeight(20),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getproportionateScreenHeight(20),
          ),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: KprimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: (() => Navigator.popAndPushNamed(
                    context, ForgotPasswordScreen.routeName)),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          ContinueBar(
            text: "continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.popAndPushNamed(
                    context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => Password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your password",
        labelText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customizeSuffixIcon(svgIcons: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => Email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your Email",
        labelText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customizeSuffixIcon(svgIcons: "assets/icons/Mail.svg"),
      ),
    );
  }
}
