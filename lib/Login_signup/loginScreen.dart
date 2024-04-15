import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:on_bording/Login_signup/Signup.dart';
import 'package:on_bording/views/widgets/InputField.dart';
import 'package:on_bording/views/widgets/RememberMeCheckBox.dart';

import '../views/pages/FinfYourAccountScreen.dart';
import '../views/pages/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    var height=MediaQuery.sizeOf(context).height;

    return Scaffold(

        body: Stack(
          children: [
            Container(
              height: height * 0.7,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff388175),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal:24,vertical: 50), // Add padding for the overall column
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5), // Spacing between the two texts
                    Text(
                      'Log back into your account',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top:height*0.15 ),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        const Column(
                          children: <Widget>[
                            InputField(label: "Email",
                            hintLabel: 'Email address',
                            icon: Icons.email_outlined),
                            InputField(
                                hintLabel: 'Password',
                                label: "Password", isPasswordField: true,icon: Icons.lock_outlined),
                          ],
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FindYourAccountScreen(),));
                          },
                          child: const Align(
                            alignment: Alignment.centerRight,
                            child: Text('Forgot Password?', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff1F1D1C),
                            )),
                          ),
                        ),
                         const CustomSwitchTile(),
                        const SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen(),));
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: 15)),
                            fixedSize: MaterialStateProperty.all<Size>(const Size(double.maxFinite, 48)), // Adjusts button size within the container
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff388175)), // Makes the button itself transparent
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(height: 150),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const Text("Don't have account?", style: TextStyle(
                               fontSize: 14,
                                 fontWeight: FontWeight.w400,
                                 color: Colors.black
                             )),
                             InkWell(
                               onTap: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp(),));
                               },
                               child: const Text("Sign up", style: TextStyle(
                                   fontWeight: FontWeight.w700,
                                   fontSize: 14,
                                   color: Color(0xff388175)
                               )),
                             )
                           ],
                         ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
