import 'package:flutter/material.dart';
import 'package:nu_go_app/utils/constants/colors.dart';
import 'package:nu_go_app/utils/constants/images.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Mabuhay, Nationalian! Register here at NU GO!',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: textGray,
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Image.asset(
                  icon,
                  height: 120,
                ),
              ),
              const SizedBox(height: 20),

              /* NAMEEEEEEEEEEEEEEE */
              TextFormField(
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Name',
                ),
              ),
              const SizedBox(height: 12),

              /* EMAIL ADDRESS */
              TextFormField(
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email),
                  hintText: 'Email Address',
                ),
              ),
              const SizedBox(height: 12),

              /* PASSWORD */
              TextFormField(
                obscureText: true,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 50),
              const SizedBox(
                width: double.infinity,
                child: SignUpButton(),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 150,
                      color: textGray,
                    ),
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(
                        color: textGray,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 150,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SignUpWithMS365(),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: textGray,
                      fontSize: 12,
                    ),
                  ),
                  SignInButton(),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Text(
        ' Sign In Account Here',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

class SignUpWithMS365 extends StatelessWidget {
  const SignUpWithMS365({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 5,
        padding: const EdgeInsets.all(12),
        shadowColor: Colors.black.withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/Office365.png', height: 30),
          const SizedBox(width: 8), // Adding spacing between image and text
          const Text(
            'Sign Up with Microsoft 365',
            style: TextStyle(
              fontSize: 16, // You can adjust the font size as needed
              fontWeight:
                  FontWeight.w500, // You can adjust the font weight as needed
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Sign Up'),
    );
  }
}
