import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/customTextField.dart';
import 'package:flutter_application_1/Widgets/formText.dart';

class VerifiedScreen extends StatefulWidget {
  VerifiedScreen();

  @override
  State<VerifiedScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<VerifiedScreen> {
  late FocusNode otp1FocusNode;
  late FocusNode otp2FocusNode;
  late FocusNode otp3FocusNode;
  late FocusNode otp4FocusNode;

  @override
  void initState() {
    super.initState();
    otp1FocusNode = FocusNode();
    otp2FocusNode = FocusNode();
    otp3FocusNode = FocusNode();
    otp4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    otp1FocusNode.dispose();
    otp2FocusNode.dispose();
    otp3FocusNode.dispose();
    otp4FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/Group 1987.png',
                  width: 367,
                  height: 262,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 50),
                  Center(
                    child: Text(
                      "Verified",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Your number have been verified successfully",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromRGBO(5, 1, 1, 0.5)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
