import 'package:flutter/material.dart';
import 'login.dart'; // Import the correct login.dart file
import 'signup.dart';
import 'fill_up.dart'; // Import the FillUpScreen
import 'manager.dart'; // Import the ManagerScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trabahanap',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF1A202C), // Optional: matches LogInScreen theme
      ),
      home: LogInScreen(), // Set LogInScreen as the home screen (first screen on app launch)
      routes: {
        '/accountType': (context) => AccountTypeScreen(),
        '/fillUp': (context) => JobSeekerProfileScreen(), // Route for FillUpScreen
        '/manager': (context) => ManagerProfileApp(), // Route for ManagerScreen
      },
    );
  }
}

class AccountTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A202C), // Explicitly set the dark background color
      appBar: AppBar(
        title: const Text(
          'Choose Account Type',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24, // Larger font size for the title
          ),
        ),
        centerTitle: true, // Center the AppBar title
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Job Seeker Option
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF2E3748),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('assets/images/ICON_FREELANCER-JOBSEEKER.png', height: 100),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Job Seeker',
                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF31D6A1),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            // Navigate to SignUpScreen for Job Seeker
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUpScreen(userType: 'jobseeker')), // Passing userType as 'jobseeker'
                            );
                          },
                          child: const Text('Create Account'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Continuous black line with "or" in the middle
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 40),
                Expanded(
                  child: Container(
                    height: 1, // Thinner line height
                    color: Colors.black, // Black color for the line
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'or',
                  style: TextStyle(color: Color(0xFF31D6A1), fontWeight: FontWeight.bold), // Green color for "or"
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 1, // Thinner line height
                    color: Colors.black, // Black color for the line
                  ),
                ),
                const SizedBox(width: 40),
              ],
            ),
            const SizedBox(height: 20),
            // Manager Option
            GestureDetector(
              onTap: () {
                // Navigate to SignUpScreen for Manager
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen(userType: 'manager')), // Passing userType as 'manager'
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF2E3748),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('assets/images/ICON_MANAGER-HR.png', height: 100),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Manager',
                          style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF31D6A1),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            // Navigate to SignUpScreen for Manager when the Create Account button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(userType: 'manager'), // Passing userType as 'manager'
                              ),
                            );
                          },
                          child: const Text('Create Account'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

