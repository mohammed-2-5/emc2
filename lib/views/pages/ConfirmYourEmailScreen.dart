import 'package:flutter/material.dart';
import 'package:on_bording/views/pages/NewPassword.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'dart:async';

class ConfirmYourEmailScreen extends StatefulWidget {
  const ConfirmYourEmailScreen({super.key});

  @override
  _ConfirmYourEmailScreenState createState() => _ConfirmYourEmailScreenState();
}

class _ConfirmYourEmailScreenState extends State<ConfirmYourEmailScreen> {
  final TextEditingController controller = TextEditingController();
  Timer? _timer;
  int _currentTime = 90; // 1 minute and 30 seconds

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_currentTime == 0) {
        timer.cancel();
        if (mounted) {
          Navigator.of(context).pop();
        }
      } else {
        setState(() {
          _currentTime--;
        });
      }
    });
  }

  String get timerText {
    final minutes = (_currentTime ~/ 60).toString().padLeft(2, '0');
    final seconds = (_currentTime % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  void dispose() {
    _timer?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Confirm Your Email', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24)),
            const Text('Write down confirmation code ', style: TextStyle(fontSize: 14.0, color: Color(0xffBBBBBB), fontWeight: FontWeight.w500)),
            const SizedBox(height: 8.0),
            OTPTextField(
              length: 5,
              width: MediaQuery.of(context).size.width,
              fieldWidth: MediaQuery.of(context).size.width*0.12,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: $pin");
              },
            ),
            const SizedBox(height: 20.0),
            Text(timerText, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NewPassword(),));
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
              child: const Text('Continue', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
