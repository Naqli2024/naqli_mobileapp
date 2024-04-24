import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/formText.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, size: 45), // Increase icon size
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Your logo widget here
            // Replace Container() with your logo widget

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/naqlilogo.png', // Make sure to provide the correct file path
                width: 65, // Reduce logo width
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18), // Reduce text size
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward_ios,
                          size: 18), // Increase icon size
                      SizedBox(width: 5), // Adjust spacing between icons
                      Icon(Icons.person_2_outlined,
                          size: 30), // Increase icon size
                      SizedBox(width: 5), // Adjust spacing between icons
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: Color.fromRGBO(128, 123, 229, 1),
                      ), // Increase icon size
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1.0,
                autoPlayAnimationDuration:
                    Duration(seconds: 4), // Changed duration
                height: 200,
              ),
              items: [
                Image.asset(
                  'assets/truckslidefinal.jpg', // Update the asset path accordingly
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            // Adjust the space between slider and appbar
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 20),
                      child: Card(
                        elevation: 5.5,
                        shadowColor:
                            Color.fromRGBO(216, 216, 216, 1).withOpacity(0.6),
                        child: Container(
                          height: 148,
                          width: 131,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(247, 246, 255, 1),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/Group68.png',
                                  width: 119,
                                  height: 82,
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                SizedBox(height: 2),
                                Text('Vehicle',
                                    style: HomepageText.helvetica16black),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Card(
                        elevation: 5.5,
                        shadowColor:
                            Color.fromRGBO(216, 216, 216, 1).withOpacity(0.6),
                        child: Container(
                          height: 148,
                          width: 131,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(247, 246, 255, 1),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/bus.png',
                                  width: 119,
                                  height: 82,
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                SizedBox(height: 2),
                                Text('Bus',
                                    style: HomepageText.helvetica16black),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 25),
                      child: Card(
                        elevation: 5.5,
                        shadowColor:
                            Color.fromRGBO(216, 216, 216, 1).withOpacity(0.6),
                        child: Container(
                          height: 148,
                          width: 131,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(247, 246, 255, 1),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/Group1496.png',
                                  width: 119,
                                  height: 82,
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                SizedBox(height: 2),
                                Text('Equipment',
                                    style: HomepageText.helvetica16black),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5.5,
                      shadowColor:
                          Color.fromRGBO(216, 216, 216, 1).withOpacity(0.6),
                      child: Container(
                        height: 148,
                        width: 131,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(247, 246, 255, 1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/Group1660.png',
                                width: 119,
                                height: 82,
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              SizedBox(height: 2),
                              Text('Special',
                                  style: HomepageText.helvetica16black),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Card(
                        elevation: 5.5,
                        shadowColor:
                            Color.fromRGBO(216, 216, 216, 1).withOpacity(0.6),
                        child: Container(
                          height: 148,
                          width: 131,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(247, 246, 255, 1),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/Group1716.png',
                                  width: 119,
                                  height: 82,
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                SizedBox(height: 2),
                                Text('Others',
                                    style: HomepageText.helvetica16black),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 351,
                  height: 59,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(96, 105, 255, 1),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          "Get an Estimate",
                          style: HomepageText.helvetica16bold,
                        ),
                      ),
                      SizedBox(height: 9),
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 28,
                          color: Colors.white,
                        ), // Increase icon size
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
                // Your main content here
              ],
            ),
          ],
        ),
      ),
    );
  }
}
