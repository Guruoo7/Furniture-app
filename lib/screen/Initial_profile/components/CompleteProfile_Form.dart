// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:furniture/screen/OTP_Verification/Components/OTP_Body.dart';
import 'package:furniture/screen/OTP_Verification/OTP_Verification_Screen.dart';

import '../../../components/continue_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../sign_in/components/FormError.dart';
import '../../sign_in/components/customized_suffixIcons.dart';

class CompleteProfile extends StatefulWidget {
  CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstName, lastName, address;
  late int phoneNumber;
  final TextEditingController _controller = TextEditingController();

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
          SizedBox(height: getproportionateScreenHeight(45)),
          FirstNameInput(),
          SizedBox(height: getproportionateScreenHeight(35)),
          PhoneNumberInput(),
          SizedBox(height: getproportionateScreenHeight(35)),
          AddressInput(),
          SizedBox(height: getproportionateScreenHeight(45)),
          FormError(errors: errors),
          ContinueBar(
            text: ("Continue"),
            press: () {
              if (_formKey.currentState!.validate()) {}

              Navigator.pushNamed(context, OTP_verification_Screen.routeName);
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.14),
          Text(
            'By continuing your confirm that you agree \n with our Terms and Condition',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  TextFormField AddressInput() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your Address",
        labelText: "Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            customizeSuffixIcon(svgIcons: "assets/icons/Location point.svg"),
      ),
    );
  }

  TextFormField PhoneNumberInput() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue as int,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your Phone Number",
        labelText: "Phone Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customizeSuffixIcon(svgIcons: "assets/icons/Phone.svg"),
        prefix: Text('+91'),
      ),
      maxLength: 10,
      controller: _controller,
    );
  }

  TextFormField FirstNameInput() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your Name",
        labelText: "Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customizeSuffixIcon(svgIcons: "assets/icons/User.svg"),
      ),
    );
  }
}
