// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:furniture/screen/Initial_profile/Initial_profile_screen.dart';

import '../../../components/continue_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../login_success/login_success_screen.dart';
import '../../sign_in/components/FormError.dart';
import '../../sign_in/components/customized_suffixIcons.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late String email, password, confirmPassword;
  final List<String> errors = [];

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
          BuildTextEmailFormField(),
          SizedBox(height: getproportionateScreenHeight(20)),
          BuildTextPasswordFormField(),
          SizedBox(height: getproportionateScreenHeight(20)),
          BuildTextConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getproportionateScreenHeight(35)),
          ContinueBar(
            text: "continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                // Initial profile screen
                Navigator.pushNamed(context, Initial_profile_Screen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField BuildTextConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue!,
      onChanged: (value) {
        if (password == confirmPassword) {
          removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "";
        } else if (password != value) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Re-Enter your password",
        labelText: "Confirm Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customizeSuffixIcon(svgIcons: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField BuildTextPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
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

  TextFormField BuildTextEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
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
