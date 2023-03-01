import 'package:flutter/material.dart';
import 'package:furniture/screen/Sign_Up/SignUp_Screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't Have An Account? ",
          style: TextStyle(fontSize: getproportionateScreenWidth(15)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getproportionateScreenWidth(15),
              color: KprimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
