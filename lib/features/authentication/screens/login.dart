import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_go_app/features/authentication/screens/sign_up.dart';

import 'package:nu_go_app/utils/constants/colors.dart';
import 'package:nu_go_app/utils/constants/images.dart';

// TextEditing Controllers
final _emailController = TextEditingController();
final _passwordController = TextEditingController();

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                'Sign In Account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Mabuhay, Nationalian! Welcome back to NU Go!',
                style: TextStyle(
                  color: textGray,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
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

              /* Email Address */
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: "Email Address",
                  prefixIcon: Icon(Icons.alternate_email_rounded),
                ),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 12),

              /* Password */
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(
                    CupertinoIcons.lock,
                  ),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 30),

              // SIGN IN BUTTON
              const SizedBox(
                width: double.infinity,
                child: SignInButton(),
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: 150,
                    color: textGray,
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(
                      color: textGray,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 1,
                    color: textGray,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SignInWithMS365(),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not Registered yet? "),
                  SignUpButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to explore.dart
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const SignUpPage()), // Assuming Explore is your explore.dart screen
        );
      },
      child: const Text(
        "Create an Account",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: NUBlue,
        ),
      ),
    );
  }
}

class SignInWithMS365 extends StatelessWidget {
  const SignInWithMS365({
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
            'Sign In with Microsoft 365',
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

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  // SignIn Method
  void signUserIn(context) async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
      } else if (e.code == 'wrong-password') {
        print('tag: Wrong password buddy');
      }
    }

    // pop the loading circle
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: NUBlue),
      ),
      onPressed: () {
        signUserIn(context);
      },
      child: const Text(
        'Sign In',
      ),
    );
  }
}
