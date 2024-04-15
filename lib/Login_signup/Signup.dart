import 'package:flutter/material.dart';
import 'package:on_bording/views/widgets/CustomToggelButton.dart';

import '../views/widgets/InputField.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff388175),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff388175),
                  Color(0xff388175),
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  'Create Your Account',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomToggleButton(
                              title: 'Organization',
                              isSelected: selectedIndex == 0,
                              onPressed: () {
                                setState(() {
                                  selectedIndex = 0;
                                });
                              },
                            ),
                            CustomToggleButton(
                              title: 'Individual',
                              isSelected: selectedIndex == 1,
                              onPressed: () {
                                setState(() {
                                  selectedIndex = 1;
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const InputField(
                            hintLabel: 'Full Name',
                            label: 'Full Name',
                            icon: Icons.person),
                        const InputField(
                            hintLabel: 'Email Address',
                            label: 'Email',
                            icon: Icons.email_outlined),
                        const InputField(
                          hintLabel: 'Location',
                          label: 'Location',
                          icon: Icons.location_pin,
                        ),
                        const InputField(
                          hintLabel: 'Password',
                          label: 'Password',
                          icon: Icons.lock_outline,
                          isPasswordField: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen(),));
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(vertical: 15)),
                            fixedSize: MaterialStateProperty.all<Size>(const Size(
                                double.maxFinite,
                                48)), // Adjusts button size within the container
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(
                                    0xff388175)), // Makes the button itself transparent
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            'SIGN UP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
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
