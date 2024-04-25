import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/formText.dart';

class LoginPage extends StatefulWidget {
  LoginPage();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            // Close symbol
            SizedBox(
              height: 20,
            ),
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
            // Divider between close symbol and items

            // Contact Us
            ListTile(
              title: Text(
                'Contact Us',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              onTap: () {
                // Update the UI based on the selection.
              },
            ),
            // Help
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
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 128, 123, 229),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/loginlogo.png',
                  width: 250,
                ),
              ),
            ),
            // Adjust the space between slider and appbar
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), // Top-left rounded corner
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Sign in to continue",
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(5, 1, 1, 0.5)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EMAIL ID",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(5, 1, 1, 0.5),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ), // Add some space between Text and TextField
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded edges
                          color:
                              Colors.white, // Change background color to white
                          border: Border.all(
                            color: Color.fromRGBO(
                                112, 112, 112, 1), // Border color
                          ),
                        ),
                        child: SizedBox(
                          width: 307,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.left, // Align text to the left
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16,
                              ), // Padding inside TextField
                              border: InputBorder.none, // Remove default border
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PASSWORD",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(5, 1, 1, 0.5),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ), // Add some space between Text and TextField
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded edges
                          color:
                              Colors.white, // Change background color to white
                          border: Border.all(
                            color: Color.fromRGBO(
                                112, 112, 112, 1), // Border color
                          ),
                        ),
                        child: SizedBox(
                          width: 307,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.left, // Align text to the left
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16,
                              ), // Padding inside TextField
                              border: InputBorder.none, // Remove default border
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(106, 102, 209, 1)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 185,
                          height: 59,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your login functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(
                                  98, 105, 254, 1), // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                            ),
                            child: Text(
                              "Log in",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Add space between the button and the next text

                        // Text with underline
                        GestureDetector(
                          onTap: () {
                            // Add functionality for creating login here
                          },
                          child: Text(
                            "CREATE ACCOUNT",
                            style: TextStyle(
                                decoration:
                                    TextDecoration.underline, // Add underline
                                fontSize: 14,
                                color: Color.fromRGBO(106, 102, 209, 1)
                                // Adjust text size
                                ),
                          ),
                        ),

                        SizedBox(
                            height:
                                10), // Add space between the text and the next text

                        // Text without underline
                        Text(
                          "Use without Log in",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(
                                  106, 102, 209, 1) // Adjust text size
                              ),
                        ),
                      ],
                    ),
                  ),

                  // Your main content here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
