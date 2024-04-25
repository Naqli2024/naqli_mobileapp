import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/customTextField.dart';
import 'package:flutter_application_1/Widgets/formText.dart';

class OtpVerificationScreen extends StatefulWidget {
  OtpVerificationScreen();

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
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
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/Group 2172.png',
                  width: 250,
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
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "OTP Verification",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Enter the OTP sent to xxxxxxxxx",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromRGBO(5, 1, 1, 0.5)),
                        ),
                        Text(
                          "1:52",
                          style: TextStyle(
                            color: Color.fromRGBO(106, 102, 209, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 50,
                        child: TextFormField(
                          focusNode: otp1FocusNode,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context)
                                  .requestFocus(otp2FocusNode);
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 60,
                        height: 50,
                        child: TextFormField(
                          focusNode: otp2FocusNode,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 0) {
                              FocusScope.of(context)
                                  .requestFocus(otp1FocusNode);
                            } else if (value.length == 1) {
                              FocusScope.of(context)
                                  .requestFocus(otp3FocusNode);
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 60,
                        height: 50,
                        child: TextFormField(
                          focusNode: otp3FocusNode,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 0) {
                              FocusScope.of(context)
                                  .requestFocus(otp2FocusNode);
                            } else if (value.length == 1) {
                              FocusScope.of(context)
                                  .requestFocus(otp4FocusNode);
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 60,
                        height: 50,
                        child: TextFormField(
                          focusNode: otp4FocusNode,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 0) {
                              FocusScope.of(context)
                                  .requestFocus(otp3FocusNode);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  GestureDetector(
                    onTap: () {
                      // Add functionality for resending OTP here
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't send OTP?",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Add functionality for resending OTP here
                          },
                          child: Text(
                            "Resend",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(106, 102, 209, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 301,
                          height: 57,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your login functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(98, 105, 254, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "VERIFY & CONTINUE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
