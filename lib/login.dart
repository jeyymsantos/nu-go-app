import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nu_go_app/explore.dart';
import 'package:nu_go_app/utils/constants/colors.dart';
import 'package:nu_go_app/utils/theme/custom_themes/text_field_theme.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Sign In Account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                'Mabuhay, Nationalian! Welcome back to NU Go!',
                style: TextStyle(
                    color: Color.fromARGB(255, 98, 97, 97),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 40),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/icons/icon.png', height: 110),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(Icons.alternate_email_rounded),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 207, 207, 207),
                      fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(
                      CupertinoIcons.lock,
                    ),
                    suffixIcon: Icon(Icons.visibility),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 207, 207, 207),
                        fontWeight: FontWeight.w400)),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: NUBlue),
                  ),
                  onPressed: () {
                    // Navigate to explore.dart
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>const Explore()), // Assuming Explore is your explore.dart screen
                    );
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5), // Optional: Adjust margin as needed
                    ),
                  ),
                  const Text(' OR '),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5), // Optional: Adjust margin as needed
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.all(12),
                  shadowColor: Colors.black.withOpacity(0.1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/Office365.png', height: 30),
                    const SizedBox(
                        width: 8), // Adding spacing between image and text
                    const Text(
                      'Sign In with Microsoft 365',
                      style: TextStyle(
                        fontSize: 16, // You can adjust the font size as needed
                        fontWeight: FontWeight
                            .w500, // You can adjust the font weight as needed
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not Registered yet? "),
                  Text(
                    "Create an Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: NUBlue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
