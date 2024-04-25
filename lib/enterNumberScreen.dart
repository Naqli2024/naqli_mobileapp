import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/customTextField.dart';
import 'package:flutter_application_1/Widgets/formText.dart';

class EnterNumberScreen extends StatefulWidget {
  EnterNumberScreen();

  @override
  State<EnterNumberScreen> createState() => _EnterNumberScreenState();
}

class _EnterNumberScreenState extends State<EnterNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 10, top: 10),
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text(
                'Contact Us',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              onTap: () {
                // Update the UI based on the selection.
              },
            ),
            ListTile(
              title: Text(
                'Help',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              onTap: () {
                // Update the UI based on the selection.
              },
            ),
          ],
        ),
      ),
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
                      "Enter Your Phone Number",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Center(
                    child: Text(
                      "We will send you a 4 digit verification code",
                      style: TextStyle(
                          fontSize: 17, color: Color.fromRGBO(5, 1, 1, 0.5)),
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(height: 8),
                  SizedBox(
                    width: 307,
                    height: 50,
                    child: TextFormField(
                      // Controller for TextField
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        // Hint text
                        labelText: 'Mobile No', // Label text
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(5, 1, 1, 0.5),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the border radius as needed
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  GestureDetector(
                    onTap: () {
                      // Add functionality for creating login here
                    },
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 14,
                        color: Color.fromRGBO(106, 102, 209, 1),
                      ),
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
                              "GENERATE OTP",
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
