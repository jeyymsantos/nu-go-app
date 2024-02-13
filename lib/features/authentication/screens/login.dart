import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_go_app/features/common/alert-dialog-widget.dart';

import 'package:nu_go_app/utils/constants/colors.dart';
import 'package:nu_go_app/utils/constants/images.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditing Controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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

      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      if (e.code == 'invalid-email') {
        alert(
          context,
          'Invalid Email',
          'Please make sure to input a valid email address.',
        );
      } else if (e.code == 'invalid-credential') {
        alert(
          context,
          'Incorrect Email or Password',
          'Email and Password does not match any user from our end. Please try again.',
        );
      } else {
        alert(
          context,
          'No internet connection',
          'Please make sure to connect on an available wifi or mobile data to login. \n\n(Error Code: ${e.code})',
        );
      }
    }
  }

  // ALERT //
  void alert(context, String title, String description) {
    showDialog(
      context: context,
      builder: (context) {
        return MyAlertDialog(
          title: title,
          description: description,
        );
      },
    );
  }

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

              /* Email Address TextField */
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: "Email Address",
                  prefixIcon: Icon(Icons.alternate_email_rounded),
                ),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 12),

              /* Password TextFormField */
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

              // Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: NUBlue),
                  ),
                  onPressed: () {
                    if (_emailController.text == "" ||
                        _passwordController.text == "") {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const MyAlertDialog(
                            title: 'Login Failed',
                            description:
                                'Make sure to complete all the fields and input your email & password correctly.',
                          );
                        },
                      );
                    } else {
                      signUserIn(context);
                    }
                  },
                  child: const Text(
                    'Sign In',
                  ),
                ),
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 1,
                      color: textGray,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SignInWithMS365(),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not Registered yet? "),
                  GoToCreateAccount(widget: widget),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class GoToCreateAccount extends StatelessWidget {
  const GoToCreateAccount({
    super.key,
    required this.widget,
  });

  final LoginPage widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
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
