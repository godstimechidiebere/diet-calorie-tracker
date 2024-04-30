import 'package:dietonyi/screens/login/login_form_widget.dart';
import 'package:dietonyi/src/constants/image_strings.dart';
import 'package:dietonyi/src/constants/sizes.dart';
import 'package:dietonyi/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(tLoginimg),
              ),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(tLoginContinue),
                      Text(
                        tAppNameLong,
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.green.shade900,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SignInButton(
                            Buttons.Apple,
                            text: "Sign up with Apple",
                            onPressed: () {},
                          ),
                          SignInButton(
                            Buttons.Google,
                            text: "Sign up with Google",
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'By Signing in you are agreeing to our',
                            style: TextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            'Terms and Privacy Policy',
                            style: TextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                /*--  Section 1 -- */
                //LoginHeaderWidget(size: size),
                /*--  /.end -- */

                /*--  Section 2 -- */
                const LoginForm(),
                /*--  /.end -- */

                /*--  Section 3 -- */
                //LoginFooterWidget(),
                /*--  /.end -- */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
